---
layout: post
title: "Did you got a SSL certificate from GoDaddy, was issued by GoDaddy G2 and now you have issues of non-valid/not-trusted certificate?"
categories:
- English
- GoDaddy
- SSL
- SSL certificate
- NGINX
- Trust
---

After we bought a certificate with GoDaddy (which BTW, wasn't my idea) it got signed by their CA GoDaddy - G2, which turns out is not trusted by `nodejs`, nor by safari on iOS.

The certificate comes with a file called `gd_bundle.crt` which I thought it would be enough since it's the one being sent by GoDaddy to be added into the chain, so I made the `cat gd_bundle.crt >> my_cert.crt`. What's the surprise? That's only G2 CA bundle, not G1 which is widely trusted, the path wasn't there.

Obviously part of the solution, then, was going to [GoDaddy's cert repo](https://certs.godaddy.com/repository/) and try one by one the probable solutions. To avoid making you lose time on it: the file to download is called `gd_bundle-g2-g1.crt` and is under the *GoDaddy Certificate Chain* title. If you're using NGINX (like me) you need to concatenate that file to the certificate given to you by GoDaddy, that means the conent of `gd_bundle-g2-g1.crt` must go **after** the content of your certificate in order to get the chain right, so the command should look like:

    cat gd_bundle-g2-g1.crt >> your-certificate.crt

Now you got a fully trusted certificate.
