## Hypermedia APIs for Sensor Data
### A pragmatic approach to<br>the Web of Things
#### Mobiquitous 2014

---

## Spencer Russell<br>Joe Paradiso
### MIT Media Lab
### Responsive Environments Group

---

## Big Picture
<div class="notes">
* global scale
* not meant to replace low-power protocols
* build on web technologies
* leverage existing infrastructure and talent
</div>

---

### Low-Level Protocol Diversity
### Layered Architecture
### Hyperlinks
### Shared Vocabularies
### Semantic Relations
### Familiar Standards, Minimal Tooling
### Pub/Sub

---

### Low-Level Protocol Diversity
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Semantic Relations {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* Assume a plurality of low-level device protocols
</div>

---

![](vision_1.svg)

<div class="notes">
* abstract them from clients
</div>

---

![](vision_2.svg)

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Semantic Relations {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* allowing intermediaries
* handle caching, authentication, and encryption
</div>

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
* still better because of the layers
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks
### Shared Vocabularies {class="dim"}
### Semantic Relations {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* present resource relations
* affordances(creating a device, sending a command)
* currently using JSON-HAL, but JSON-LD looks nice as well
* Going to spend a little time here, as it's important!
</div>

---

![](vision_5.svg)
<div class="notes">
* now with hyperlinks
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
<div class="notes">
* now that we have all these links, what do they mean?...
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies
### Semantic Relations {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* Support interoperability via shared vocabularies
* specifically focus on vocabulary of relation names and data types
* terms identified with URIs
* lightweight to extend
</div>

---

![](resource_relations.svg)

<div class="notes">
* Need vocab for relation types, data types
* HAL gives nice way to tie relations to URLs to identify and describe
* some (esp. search engines) are already using Schema.org data types
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Semantic Relations
### Familiar Standards, Minimal Tooling {class="dim"}
### Pub/Sub {class="dim"}

<div class="notes">
* enabled by hyperlinks and shared vocabulary
* Provide semantic relationships
* Probably not necessary to tie in to Upper Ontology
* don't require full Semantic Web buy-in from developers
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Semantic Relations {class="dim"}
### Familiar Standards, Minimal Tooling
### Pub/Sub {class="dim"}

<div class="notes">
* use familiar standards (HTTP, JSON, and WebSockets)
* no specialized tooling or libraries
</div>

---

    {
        "firstName": "Spencer",
        "lastName": "Russell"
    }

<div class="notes">
* raw JSON doesn't give us QUITE enough
* we still need hyperlinks and shared vocabulary
</div>

---

    {
        "_links": {
            "self": { "href": "/api/user/837" },
            "address": { "href": "/api/address/938" }
        },
        "firstName": "Spencer",
        "lastName": "Russell"
    }

<div class="notes">
* just JSON with links
* has a mechanism for the relation name to be a URL, but I won't go into it here
* this gives us everything we need
</div>

---

### Low-Level Protocol Diversity {class="dim"}
### Layered Architecture {class="dim"}
### Hyperlinks {class="dim"}
### Shared Vocabularies {class="dim"}
### Semantic Relations {class="dim"}
### Familiar Standards, Minimal Tooling {class="dim"}
### Pub/Sub

<div class="notes">
* allow clients to subscribe to push updates
</div>

---

![](streaming.svg)

<div class="notes">
* use links to tell clients when streams are available
</div>

---

## Implementation
<div class="notes">
* reference implementation is in progress, but in use now
* basically everything except the shared vocabularies
</div>


---

![](scope2.svg)

<div class="notes">
* python
* django and flask
* postgres
</div>

---

### 490 Devices
### 2257 Sensors
### Over 240,000,000 measurements
### 6 applications

<div class="notes">
* devices using a variety of protocols
* applications: (2x unity, 2x glass, javascript web, SOOFA)
* common protocols are a lot easier in unique or niche environments (e.g. Unity)
</div>

---

Live
----

[http://chain-api.media.mit.edu](http://chain-api.media.mit.edu)
![](chain_screen.png)

---

Open Source
-----------

[https://github.com/ssfrr/chain-api](https://github.com/ssfrr/chain-api)
![](github_screen.png)

## Spencer Russell
### sfr@media.mit.edu
### @ssfrr
### github.com/ssfrr

Security
--------

<div class="notes">
* admittedly security isn't a focus of my research
* brand-new security schemes scare me
</div>

---

![image from http://www.noip.com/](Heartbleed_Nightmare.jpg)

---

