## Erlang Dockerfile

This repository contains **Dockerfile** of [Erlang](http://www.erlang.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/efcasado/erlang/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [ubuntu](https://registry.hub.docker.com/_/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/efcasado/erlang/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull efcasado/erlang`.


### Usage

    docker run -it --rm efcasado/erlang

##### Run `erl`

    docker run -it --rm efcasado/erlang erl


### Flavours (`normal` and `slim`)

Most Erlang versions are available in two flavors: slim and normal.
Normal images are built from the `esl-erlang` package provided by
`Erlang Solutions` and include the Erlang/OTP platform and all of
its applications. On the other hand, `slim` images are built from
the `erlang-base` package, which includes the Erlant/OTP platform
and a minimal set of applications (i.e. `compiler`, `erts`, `kernel`,
`ose`, `sasl` and `stdlib`).
