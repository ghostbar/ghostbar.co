---
layout: post
title: "Using angular-file-uploader and angular-file-model together"
categories:
- English
- Angular.js
- JavaScript
- angular-file-uploader
- angular-file-model
date: 2014-05-16 21:59:39 UTC-0500
---
Two of the first angular module's I wrote were built to work together very well, they are [`angular-file-uploader`](https://github.com/ghostbar/angular-file-uploader) and [`angular-file-model`](https://github.com/ghostbar/angular-file-uploader).

`angular-file-model` works as you actually expect `ng-model` to work by default with files, that means: takes the data from an `<input type='file'>` and makes it available on the object passed to `ng-model`.

`angular-file-uploader` does the thing the regular `$http.post` does not: letting you know about the current state of the upload in percentages.

Installing it is:

{% highlight bash %}
~$ bower install angular-file-uploader angular-file-model
{% endhighlight %}

So let's take a basic `uploader.html`:

{% highlight html %}
<input type='file' data-file-model='form.theFile'>
<button ng-click='upload()'>Upload</button>
{% endhighlight %}

And now `file.js`:

{% highlight javascript %}
angular.module('myApp', ['angular-file-uploader', 'angular-file-model']);

angular.module('myApp').controller('UploadCtrl', [
  '$scope',
  'angularFileUploader',
  function ($scope, ngUploader) {
    $scope.form = {};

    var config = {
      newNames: {
        $scope.form.file[0].name: 'newNameWithoutExtension'
      }
    };

    $scope.upload = function () {
      ngUploader.send(
        'https://domain.tld/upload/path',
        $scope.form.file,
        config
      ).then(
        success,
        error,
        progress
      );
    };

    function success (msg) {
      console.log(msg);
    };

    function error (errorMsg) {
      console.log(errorMsg);
    };

    function progress (status) {
      console.log(status);
    };
  }
]);
{% endhighlight %}
