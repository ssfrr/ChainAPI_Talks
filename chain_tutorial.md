% Chain API
% Spencer Russell; MIT Media Lab; Responsive Environments Group
% 2014-10-06

---

## Sensor Architecture

---

![](scope2.svg)

---

Just JSON
---------

<div class="notes">
* based on json+hal
* minimum valid json+hal document is...
</div>

---

    {}

---

    {
      "name": "MIT Media Lab"
    }

---

Links
-----

<div class="notes">
* Hypermedia
* Built on json+hal
</div>

---

![](resource_relations.svg)

---

    {
      "name": "MIT Media Lab"
    }

<div class="notes">
just a piece of information. It looks so lonely.
</div>

---


    {
      "name": "MIT Media Lab"
      "_links": {
        "self": {
          "href": "http://chain-api.media.mit.edu/sites/5"
        },
        "siteSummary": {
          "href": "http://chain-api.media.mit.edu/sites/5/summary",
          "title": "Summary"
        },
        "devices": {
          "href": "http://chain-api.media.mit.edu/devices/?site_id=5",
          "title": "Devices"
        }
      }
    }

<div class="notes">
that wasn't so hard, not too much extra complexity
</div>

---

<div class="dim">
    {
      "name": "MIT Media Lab"
</div>
      "_links": {
<div class="dim">
        "self": {
          "href": "http://chain-api.media.mit.edu/sites/5"
        },
        "siteSummary": {
          "href": "http://chain-api.media.mit.edu/sites/5/summary",
          "title": "Summary"
        },
        "devices": {
          "href": "http://chain-api.media.mit.edu/devices/?site_id=5",
          "title": "Devices"
        }
</div>
      }
<div class="dim">
    }
</div>

---

<div class="dim">
    {
      "name": "MIT Media Lab"
      "_links": {
</div>
        "self": {
          "href": "http://chain-api.media.mit.edu/sites/5"
        },
<div class="dim">
        "siteSummary": {
          "href": "http://chain-api.media.mit.edu/sites/5/summary",
          "title": "Summary"
        },
        "devices": {
          "href": "http://chain-api.media.mit.edu/devices/?site_id=5",
          "title": "Devices"
        }
      }
    }
</div>

<div class="notes">
Each link has at least a "href" field
</div>

---

<div class="dim">
    {
      "name": "MIT Media Lab"
      "_links": {
        "self": {
          "href": "http://chain-api.media.mit.edu/sites/5"
        },
</div>
        "siteSummary": {
          "href": "http://chain-api.media.mit.edu/sites/5/summary",
          "title": "Summary"
        },
<div class="dim">
        "devices": {
          "href": "http://chain-api.media.mit.edu/devices/?site_id=5",
          "title": "Devices"
        }
      }
    }
</div>

<div class="notes">
most linke have a "title" field for user display
NOTE: the siteSummary view is probably going to change soon.
</div>

---

<div class="dim">
    {
      "name": "MIT Media Lab"
      "_links": {
        "self": {
          "href": "http://chain-api.media.mit.edu/sites/5"
        },
        "siteSummary": {
          "href": "http://chain-api.media.mit.edu/sites/5/summary",
          "title": "Summary"
        },
</div>
        "devices": {
          "href": "http://chain-api.media.mit.edu/devices/?site_id=5",
          "title": "Devices"
        }
<div class="dim">
      }
    }
</div>

<div class="notes">
also talk about `_embedded` fields for caching here.
</div>

---

<div class="dim">
    {
      "name": "MIT Media Lab"
      "_links": {
        "self": {
          "href": "http://chain-api.media.mit.edu/sites/5"
        },
</div>
        "curies": [
          {
            "href": "http://chain-api.media.mit.edu/rels/{rel}",
            "name": "ch",
            "templated": true
          }
        ],
        "ch:siteSummary": {
          "href": "http://chain-api.media.mit.edu/sites/5/summary",
          "title": "Summary"
        },
<div class="dim">
        "ch:devices": {
          "href": "http://chain-api.media.mit.edu/devices/?site_id=5",
          "title": "Devices"
        }
      }
    }
</div>


---

Streaming
---------

---

![](streaming.svg)

<div class="notes">
So how does the client discover when a stream is available and how to connect?
</div>

---

<div class="dim">
    {
      "name": "MIT Media Lab"
      "_links": {
        "self": {
          "href": "http://chain-api.media.mit.edu/sites/5"
        },
        "ch:siteSummary": {
          "href": "http://chain-api.media.mit.edu/sites/5/summary",
          "title": "Summary"
        },
        "ch:devices": {
          "href": "http://chain-api.media.mit.edu/devices/?site_id=5",
          "title": "Devices"
        },
</div>
        "ch:websocketStream": {
          "href": "ws://chain-api.media.mit.edu/ws/site-5",
          "title": "Websocket Stream"
        }
<div class="dim">
      }
    }
</div>

<div class="notes">
* we need some more documentation on the data that comes back over the stream.
* sensor data has a "ch:sensor" rel that points to the sensor the data came from.
* typically clients will start with using the HTTP API, to get current state, then switch to the
  stream for updates
</div>

---

Discoverable
------------

<div class="notes">
* Hypermedia
* Built on json+hal
* Links represent possible actions the client can take
    * Creating a device
    * Sending a command
</div>

---

<div class="dim">
    {
      "name": "MIT Media Lab"
      "_links": {
        "self": {
          "href": "http://chain-api.media.mit.edu/sites/5"
        },
        "ch:devices": {
          "href": "http://chain-api.media.mit.edu/devices/?site_id=5",
          "title": "Devices"
        }
</div>
        "editForm": {
          "href": "http://chain-api.media.mit.edu/sites/5/edit",
          "title": "Edit Site"
        }
<div class="dim">
      }
    }
</div>

<div class="notes">
* clients that aren't allowed to edit data just don't get an editForm link
* affordances are described to the client by the server via links
</div>

---

Open Source
-----------

[https://github.com/ssfrr/chain-api](https://github.com/ssfrr/chain-api)
![](github_screen.png)

Live
----

[http://chain-api.media.mit.edu](http://chain-api.media.mit.edu)
![](chain_screen.png)

<div class="notes">
* GET request from a browser will provide this interface
* GET request from an API client will provide...
</div>


Getting Started
---------------

---

GET http://chain-api.media.mit.edu

    {
      "_links": {
        "curies": [
          {
            "href": "http://chain-api.media.mit.edu/rels/{rel}",
            "name": "ch",
            "templated": true
          }
        ],
        "self": {
          "href": "http://chain-api.media.mit.edu/"
        },
        "ch:sites": {
          "href": "http://chain-api.media.mit.edu/sites/",
          "title": "Sites"
        }
      }
    }

---

### Live Site

[http://chain-api.media.mit.edu](http://chain-api.media.mit.edu)

### Main Github

[https://github.com/ssfrr/chain-api](https://github.com/ssfrr/chain-api)

### Python Client Library

[https://github.com/ssfrr/chainclient.py](https://github.com/ssfrr/chainclient.py)

### ChainAPI - OSC Bridge

[https://github.com/ssfrr/chainosc.py](https://github.com/ssfrr/chainosc.py)
