% Chain API
% Spencer Russell; MIT Media Lab
% 2014-04-23

---

## Sensor Architecture

---

![](scope1.svg)

---

![](scope2.svg)

---

![](scope3.svg)

Project Scope
-------------

---

![](scope3.svg)

---

![](scope4.svg)

---

![](scope5.svg)

<div class="notes">
* not about implementation specifics
* exploring API design
* tying together existing standards
</div>


Link Oriented
-------------

<div class="notes">
* Hypermedia
* Built on json+hal
</div>

---

![](resource_relations.svg)

---

Discoverable
------------
<div class="notes">
* Links represent possible actions the client can take
    * Creating a device
    * Sending a command
* Hypermedia
* Built on json+hal
</div>

Streaming
---------

---

![](streaming.svg)

---

Decentralized
-------------

<div class="notes">
* Modeled after the Web
* Seamlessly cross servers
* allow flexibility for implementations (though there's a balance)
</div>

---

![](server_relations.svg)

---

Crawlable
---------

<div class="notes">
* moving forwards (future work)
* Leverage Search Engines
* Links represent relationships
* Search engines already taking advantage of semantic links in HTML (microdata)
</div>

---

![](crawling.svg)

Open Source
-----------

[https://github.com/ssfrr/chain-api](https://github.com/ssfrr/chain-api)
![](github_screen.png)

Live
----

[http://chain-api.media.mit.edu](http://chain-api.media.mit.edu)
![](chain_screen.png)
