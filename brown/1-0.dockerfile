# Get source from http://www.lysator.liu.se/~gunnar/gtp/
# License: MIT
FROM   alpine:3.3

RUN    apk add --update curl make gcc musl-dev
RUN    mkdir /usr/local/src &&\
         cd /usr/local/src &&\
         curl -O http://www.lysator.liu.se/~gunnar/gtp/brown-1.0.tar.gz &&\
         tar zxf brown-1.0.tar.gz

RUN    cd /usr/local/src/brown-1.0 && make
RUN    mv /usr/local/src/brown-1.0/brown /usr/local/bin

ENTRYPOINT  ["/usr/local/bin/brown"]
