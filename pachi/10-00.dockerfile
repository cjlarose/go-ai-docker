# Download source from http://repo.or.cz/w/pachi.git/snapshot/pachi-10.00-satsugen.tar.gz
# License: Unknown
FROM    cjlarose/baduk.io-base

RUN     cd /usr/local/src &&\
          curl -O http://repo.or.cz/w/pachi.git/snapshot/pachi-10.00-satsugen.tar.gz &&\
          tar zxf pachi-10.00-satsugen.tar.gz
RUN     cd /usr/local/src/pachi && make
RUN     cp /usr/local/src/pachi/pachi /usr/local/bin/pachi

CMD     /usr/local/bin/pachi
