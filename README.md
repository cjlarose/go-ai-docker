Here is a collection Dockerfiles for use in building containers for Go AIs.
Include links to source and consult licenses.

Programs must support [GTP version 2][1], and must communicate over
`stdin`/`stdout` as the `CMD` in the Dockerfile. Dockerfiles should use
`cjlarose/baduk.io-base` as the base image. This is a barebones Debian Wheezy
image with only `build-essential` and `curl` installed.

[1]: http://www.lysator.liu.se/~gunnar/gtp/

# To play

```
docker build -t gnu-go:3.8 - < gnu-go/3-8.dockerfile
docker run -ti --rm gnu-go:3.8
```
