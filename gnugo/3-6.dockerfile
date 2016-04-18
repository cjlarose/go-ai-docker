# Download source from http://ftp.gnu.org/gnu/gnugo/
# License: GPLv3
FROM    alpine:3.3

RUN     apk add --update curl make gcc musl-dev
RUN     mkdir /usr/local/src &&\
          cd /usr/local/src &&\
          curl -O http://ftp.gnu.org/gnu/gnugo/gnugo-3.6.tar.gz &&\
          tar zxf gnugo-3.6.tar.gz
RUN     cd /usr/local/src/gnugo-3.6 &&\
          ./configure &&\
          make install

CMD     gnugo --mode gtp
