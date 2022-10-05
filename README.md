# E-Book Convert Docker Image

This is a docker image builder for calibre’s `ebook-convert`.


To use the image:


```bash
$ docker run --rm -v $PWD:/ebook-output yangjaceliu/ebook-convert:6.6.1 <source_path> output.mobi
```


