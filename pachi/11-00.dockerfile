# Download source from http://pachi.or.cz/
# License: GNU GENERAL PUBLIC LICENSE
FROM    cjlarose/baduk.io-base

RUN     cd /usr/local/src &&\
          curl -O http://repo.or.cz/w/pachi.git/snapshot/pachi-11.00-retsugen.tar.gz &&\
          tar zxf pachi-11.00-retsugen.tar.gz
RUN     cd /usr/local/src/pachi-pachi-11.00-retsugen-9f8c498 && make
RUN     cp /usr/local/src/pachi-pachi-11.00-retsugen-9f8c498/pachi /usr/local/bin/pachi

CMD     /usr/local/bin/pachi
