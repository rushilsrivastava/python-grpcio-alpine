# python-grpcio-alpine

Docker images with Python 3 on Alpine with grpcio pre-compiled.

The image is published on Docker Hub at [`hub.docker.com/r/rushilsrivastava/python-grpcio-alpine`](https://hub.docker.com/r/rushilsrivastava/python-grpcio-alpine).

## Image Tags

Currently, the Python `3.7`-`3.9` is supported on Alpine Version `3.13`-`3.15`. Only the latest `grpcio` version is built, but previously built versions starting from `1.43.0` are available. You can use `latest` for the version to get the latest grpcio version as well.

The naming convention goes as follows:

    rushilsrivastava/python-grpcio-alpine:{PYTHON_VERSION}-{GRPCIO_VERSION}-{ALPINE_VERSION}

For example, to download the Python `3.9` image for Alpine `3.13` with grpcio `1.43.0`, the following would be used:

    docker pull rushilsrivastava/python-grpcio-alpine:3.9-1.43.0-3.13
