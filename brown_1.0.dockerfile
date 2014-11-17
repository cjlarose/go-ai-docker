# Get source from http://www.lysator.liu.se/~gunnar/gtp/
# License: MIT
FROM   cjlarose/baduk.io-base

RUN    cd /usr/local/src &&\
         curl -O http://www.lysator.liu.se/~gunnar/gtp/brown-1.0.tar.gz &&\
         tar zxf brown-1.0.tar.gz

RUN    cd /usr/local/src/brown-1.0 && make
RUN    cp /usr/local/src/brown-1.0/brown /usr/local/bin

CMD    /usr/local/bin/brown
