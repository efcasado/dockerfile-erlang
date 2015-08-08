## Erlang Dockerfile
[![Build Status](https://travis-ci.org/efcasado/dockerfile-erlang.svg?branch=master)](https://travis-ci.org/efcasado/dockerfile-erlang)

[![nodesource/node](http://dockeri.co/image/efcasado/erlang)](https://registry.hub.docker.com/u/efcasado/erlang/)

This repository contains a collection of
[Dockerfile](https://docs.docker.com/reference/builder/)s
for building [Docker](https://www.docker.com) images of various versions of
[Erlang](http://www.erlang.org/).

The Docker images are build automatically and published to the public
[Docker Hub Registry](https://registry.hub.docker.com/u/efcasado/erlang/).


### Base Docker Image

* [ubuntu](https://registry.hub.docker.com/_/ubuntu/)


### Using the Erlang Docker images

1. Install [Docker](https://www.docker.com/).

2. Pull the Erlang Docker image from the public
[Docker Hub Registry](https://registry.hub.docker.com/u/efcasado/erlang/).

```
docker run -it --rm efcasado/erlang[:<tag>]
```

where `<tag>` refers to the Erlang version one wants to use.


### Author(s)

- Enrique Fernandez `<efcasado(at)gmail.com>`


### License

> The MIT License (MIT)
>
> Copyright (c) 2015 Enrique Fernandez
>
> Permission is hereby granted, free of charge, to any person obtaining a copy
> of this software and associated documentation files (the "Software"), to deal
> in the Software without restriction, including without limitation the rights
> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in
> all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> THE SOFTWARE.