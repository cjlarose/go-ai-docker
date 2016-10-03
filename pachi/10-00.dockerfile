# Download source from http://pachi.or.cz/
# License: GNU GENERAL PUBLIC LICENSE v2
FROM    debian:wheezy

RUN     apt-get update &&\
          apt-get install -y curl make gcc
RUN     cd /usr/local/src &&\
          curl -O http://repo.or.cz/w/pachi.git/snapshot/pachi-10.00-satsugen.tar.gz &&\
          tar zxf pachi-10.00-satsugen.tar.gz
RUN     cd /usr/local/src/pachi-pachi-10.00-satsugen-3c2a1ff && make
RUN     mv /usr/local/src/pachi-pachi-10.00-satsugen-3c2a1ff/pachi /usr/local/bin/pachi

ENTRYPOINT ["/usr/local/bin/pachi"]
