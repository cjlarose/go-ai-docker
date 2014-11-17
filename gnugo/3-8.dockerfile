# Download source from http://ftp.gnu.org/gnu/gnugo/
# License: GPLv3
FROM    cjlarose/baduk.io-base

RUN     cd /usr/local/src &&\
          curl -O http://ftp.gnu.org/gnu/gnugo/gnugo-3.8.tar.gz &&\
          tar zxf gnugo-3.8.tar.gz
RUN     cd /usr/local/src/gnugo-3.8 &&\
          ./configure &&\
          make install

CMD     gnugo --mode gtp
