# Go Engine Dockerfiles

A collection Dockerfiles for use in building containers that run Go AIs.

All programs support [GTP version 2][1], and communicate over `stdin`/`stdout`
as the `CMD` in the Dockerfile.

[1]: http://www.lysator.liu.se/~gunnar/gtp/

# To play

```
docker build -t gnugo:3.8 - < gnugo/3-8.dockerfile
docker run -ti --rm gnugo:3.8
```

# Contributing

Include links to source and consult licenses. Include any caveats (e.g. only
works on 9x9 boards) in comments.
