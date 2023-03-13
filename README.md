[![Docker Stars](https://img.shields.io/docker/stars/frolvlad/alpine-pypy.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-pypy/)
[![Docker Pulls](https://img.shields.io/docker/pulls/frolvlad/alpine-pypy.svg?style=flat-square)](https://hub.docker.com/r/frolvlad/alpine-pypy/)


PyPy Docker image
=================

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[Python 3.8](https://www.python.org/).

This image is only 129MB on disk.


Usage Example
-------------

```bash
$ docker run --rm frolvlad/alpine-pypy python -c 'print("Hello World")'
```

Once you have run this command you will get printed 'Hello World' from Python! Or use it interactivelly:

```bash
$ docker run -it --rm frolvlad/alpine-pypy python
```


NOTE: `pip` is also available in this image.
