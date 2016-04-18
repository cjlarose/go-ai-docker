Here is a collection Dockerfiles for use in building containers for Go AIs.
Include links to source and consult licenses.

Programs must support [GTP version 2][1], and must communicate over
`stdin`/`stdout` as the `CMD` in the Dockerfile.

[1]: http://www.lysator.liu.se/~gunnar/gtp/

# To play

```
docker build -t gnugo:3.8 - < gnugo/3-8.dockerfile
docker run -ti --rm gnugo:3.8
```
