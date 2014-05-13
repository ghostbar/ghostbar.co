---
layout: post
title: "MongoDB: $pull from an embedded document array"
categories:
- mongodb
- mongo
- howto
- planet-debian
type: post
date: 2013-08-26 02:43:25 UTC-0430
---
TL;DR: 
{% highlight js %}
    db.collection.update({_id: 'x'}, {$pull: {embedded_doc: {_id: 'y'}}}){% endhighlight %}

<small>Queries are wrote for the `mongo` shell</small>

Dot based access
----------------
If you have been using [MongoDB](http://mongodb.org) for some time, then there are big chances that you will know the "dot-based access" on the `find` queries. This is the easier way to write those queries and will probably want to keep using that. Like:

{% highlight js %}
    db.collection.find({_id: 'x', 'embedded_doc._id': 'y'})
{% endhighlight %}

The thing is that does not work with everything, like: Arrays of embedded documents!

Little example schema
---------------------
Let's suppose the following little schema (written for [Mongoose](http://mongoosejs.com)):

{% highlight js %}
    A = new Schema({
      w: String,
      x: String
    });

    Document = new Schema({
      embedded_doc: [A]
    });
{% endhighlight %}

The collection of `Document` is called `documents`.

Updating arrays
---------------
If the arrays are not embedded documents I can actually just use a regular `update` like with any other field combined with a `$set` and change all the array like:

{% highlight js %}
    db.documents.update({_id: 'x', {$set: {array: [
      {a: 1}, 
      {a: 2}, 
      {a: 3}
    ]}}})
{% endhighlight %}

And using conveniently `$pull` and `$addToSet`. But when it comes to embedded documents the history is very different. You can't make a simple `$set` because it will give you an error related to `ModId` which you can't change. So you really need to use `$push`, `$addToSet`, `$pull` and it's friends.

So all those you can do it as in the manual, but what if you want to make a `$pull` over an array of objects and `w` and `x` are not unique? Well, that's why you probably made them an embedded document! Then you have the `_id` and you try to use the dot notation like:

{% highlight js %}
    db.documents.update({_id: 'x'}, {$pull: {"embedded_doc._id": 'y'})
{% endhighlight %}

And it looks good, except that it wont work. You have to use the complete syntax like:

{% highlight js %}
    db.documents.update({_id: 'x'}, {$pull: {embedded_doc: {_id: 'y'}}})
{% endhighlight %}
