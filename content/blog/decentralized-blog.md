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

I'm using [Hugo](https://gohugo.io/) and [Fleek.co](http://fleek.co/) to automatically build and deploy the static files on IPFS.

If you have [installed IPFS](https://ipfs.io/#install), and you have a browser extension such as [IPFS Companion](https://chrome.google.com/webstore/detail/ipfs-companion/nibjojkomfdiaoajekhjakgkdhaomnch?hl=en), when you type the URL in the browser you will be redirected to a much less comprehensible address, something like this:

> http://bafybeibel2wf2vyocphmteaxnzxx6f2sqvlaw3lbvuztpm7kf22tsevpk4.ipfs.localhost:8080/

The string before .ipfs.localhost:8080 is the [CID](https://docs.ipfs.io/concepts/content-addressing/) of this page, i.e. the Content Identifier, which is the cryptographic hash of the physical file you are reading now. What does it mean? It means that if I change anything in this page, the hash will change and so its address. This prevents this content to be unique and not changeable. You can inspect the CID from [here](https://cid.ipfs.io/#bafybeibel2wf2vyocphmteaxnzxx6f2sqvlaw3lbvuztpm7kf22tsevpk4).

If you are using a standard Web browser, you can still access this blog via http://alebaffa.eth.link, thanks to https://eth.link/.
 
What does this all mean? The URL you typed in your browser is not pointing to a location (i.e. a web server), it is pointing to a specific content that has its own hash. A very light hash, which is opening to a whole new world of opportunities such as [Decentralized file storage](https://medium.com/coinmonks/ipfs-blockchain-decentralised-file-storage-9ef3a1fa307b) with Ethereum or things like [Filecoin](https://filecoin.io/).