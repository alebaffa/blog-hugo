---
title: "A Decentralized Blog"
date: 2020-06-27T15:35:00+09:00
draft: false
meta_img: "img/ipfs.png"
tags: ["ipfs"]
description: "Blog hosted on IPFS"
hacker_news_id: ""
lobsters_id: ""
---
This blog is now hosted on [IPFS](https://ipfs.io/), the Interplanetary Filesystem. 

I'm using [Hugo](https://gohugo.io/) and [Fleek.co](http://fleek.co/) to automatically build it and deploy the static files on IPFS.

If you have [installed IPFS](https://ipfs.io/#install), and you have a browser extension such as [IPFS Companion](https://chrome.google.com/webstore/detail/ipfs-companion/nibjojkomfdiaoajekhjakgkdhaomnch?hl=en), when you type the URL in the browser you will be redirected to a much less comprehensible address:

> http://bafybeibel2wf2vyocphmteaxnzxx6f2sqvlaw3lbvuztpm7kf22tsevpk4.ipfs.localhost:8080/

If you are browsing this page as you always do, you can still access it via standard URL, i.e. https://alebaffa.com . You can do this because the CNAME of my domain name points at the DNS record of an IPFS gateway (Fleek's one in this case); it receives your HTTP request and fetches the content you requested from the nearest IPFS node.
I also set up a DNSlink, so you can also access the website via

> https://ipfs.io/ipns/alebaffa.com/
 
More info [here](https://docs.ipfs.io/how-to/host-single-page-site/#point-your-domain-to-ipfs) and [here](http://dnslink.io/#example-ipfs-gateway).

The alphanumerical string at the beginning is the **Content Address Identifier** (CID) of this blog, the cryptographic hash of the underlying content. You can inspect it [here](https://cid.ipfs.io/#bafybeibel2wf2vyocphmteaxnzxx6f2sqvlaw3lbvuztpm7kf22tsevpk4). 

What does this all mean? The URL you typed in your browser is not pointing to a location (i.e. a web server), it is pointing to a specific content that has its own hash. A very light hash, btw, which is opening to a whole new world of opportunities such as [Decentralized file storage](https://medium.com/coinmonks/ipfs-blockchain-decentralised-file-storage-9ef3a1fa307b) with Ethereum or things like [Filecoin](https://filecoin.io/).

I am going to dedicate this blog to this fascinating world.