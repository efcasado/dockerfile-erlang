## Erlang Dockerfile

This repository contains **Dockerfile** of [Erlang](http://www.erlang.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/efcasado/erlang/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [ubuntu](https://registry.hub.docker.com/_/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/efcasado/erlang/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull efcasado/erlang`.


### Usage

    docker run -it --rm efcasado/erlang

#### Run `erl`

    docker run -it --rm efcasado/erlang erl