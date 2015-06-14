# Download source from http://pachi.or.cz/
# License: GPL
FROM    cjlarose/baduk.io-base

RUN     cd /usr/local/src &&\
          curl -O http://repo.or.cz/w/pachi.git/snapshot/pachi-10.00-satsugen.tar.gz &&\
          tar zxf pachi-10.00-satsugen.tar.gz
RUN     cd /usr/local/src/pachi-pachi-10.00-satsugen-3c2a1ff && make
RUN     cp /usr/local/src/pachi-pachi-10.00-satsugen-3c2a1ff/pachi /usr/local/bin/pachi

CMD     /usr/local/bin/pachi
