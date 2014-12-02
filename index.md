## Hypermedia APIs for Sensor Data
### A pragmatic approach to<br>the Web of Things
#### Mobiquitous 2014

---

## Spencer Russell<br>Joe Paradiso
### MIT Media Lab
### Responsive Environments Group

---

## Vision
<div class="notes">
* global scale
* not meant to replace low-power protocols
* build on web technologies
* leverage existing infrastructure and talent
</div>

---

![](vision_1.svg)

---

![](vision_2.svg)

---

![](vision_3.svg)

---

![](vision_4.svg)

---

![](vision_5.svg)
<div class="notes">
* so this is in many ways what is common now
* app servers not speaking same language
* no standard way for them to connect to each other
</div>

---

![](vision_6.svg)
<div class="notes">
* layered architecture, less scaling on massive connection loads and keepalive
</div>

---

### Low-Level Protocol Diversity
### Layered Architecture
### Hyperlinks
### Shared Vocabularies
### Familiar Standards, Minimal Tooling
### Semantic Relations
### Pub/Sub

---

### Low-Level Protocol Diversity
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Semantic Relations {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* Assume a plurality of low-level device protocols
* abstract them from clients
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Semantic Relations {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* allowing intermediaries
* handle caching, authentication, and encryption
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks
### Shared Vocabularies {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Semantic Relations {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* present resource relations and client affordances
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies
### Familiar Standards, Minimal Tooling {class="dim"}
### Semantic Relations {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* Support interoperability via shared vocabularies
* terms identified with URIs
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Familiar Standards, Minimal Tooling
### Semantic Relations {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* use familiar standards (HTTP, JSON, and WebSockets)
* no specialized tooling or libraries
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Semantic Relations
### Pub/Sub {class="dim"}

<div class="notes">
* Provide semantic relationships
* don't require full Semantic Web buy-in from developers
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Semantic Relations {class="dim"}
### Pub/Sub

<div class="notes">
* allow clients to subscribe to push updates
</div>

---

Link Oriented
-------------

<div class="notes">
* Links represent possible actions the client can take
    * Creating a device
    * Sending a command
* Hypermedia, like the web, MESSY
* Built on json+hal
</div>

---

![](resource_relations.svg)
<div class="notes">
* Lets take a look back at our high-level architecture
</div>

---

![](vision_6.svg)
<div class="notes">
* And now lets focus on the application servers
</div>

---

![](search_1.svg)
<div class="notes">
* But say we have a lot more application servers
</div>

---

![](search_2.svg)
<div class="notes">
* so now we have something that looks a lot like the early-90s web
* now what came along in 1994 to help consumers find what they wanted
</div>

---

![](search_3.svg)

---

![](search_4.svg)

---

![](search_5.svg)
<div class="notes">
* the web is a substrate for innovation, an ecosystem we can grow new services
  on top of
</div>

---

![](search_6.svg)

---

Security
--------

<div class="notes">
* admittedly security isn't a focus of my research
* brand-new security schemes scare me
</div>

---

![image from http://www.noip.com/](Heartbleed_Nightmare.jpg)

---

Ontology
--------

---

![](resource_relations.svg)

<div class="notes">
* shared vocabulary is necessary for nice querying
* Probably not necessary to tie in to Upper Ontology
* Need vocab for relation types, data types
* HAL gives nice way to tie relations to URLs to identify and describe
* some (esp. search engines) are already using Schema.org data types
</div>

---

## Chain API

---

![](scope2.svg)

<div class="notes">
* 366 devices in the system using a variety of protocols
* 1121 separate sensors
* Over 100,000,000 measurements over about 6 months
* at least 6 applications (2x unity, 2x glass, javascript web, SOOFA)
* common protocols are a lot easier in unique or niche environments
</div>


Streaming
---------

---

![](streaming.svg)

---

Open Source
-----------

[https://github.com/ssfrr/chain-api](https://github.com/ssfrr/chain-api)
![](github_screen.png)

Live
----

[http://chain-api.media.mit.edu](http://chain-api.media.mit.edu)
![](chain_screen.png)
