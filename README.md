# E-Book Convert Docker Image

![build](https://github.com/yang-jace-liu/ebook-convert/actions/workflows/build.yaml/badge.svg)

This is a docker image builder for calibre’s `ebook-convert`.

Pull the image from: <https://hub.docker.com/repository/docker/yangjaceliu/ebook-convert>


To use the image:


```bash
$ docker run --rm -v $PWD:/ebook-output yangjaceliu/ebook-convert:6.6.1 <source_path> output.mobi
```
