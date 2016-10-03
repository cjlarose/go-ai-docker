# Download source from http://pachi.or.cz/
# License: GNU GENERAL PUBLIC LICENSE v2
FROM    debian:wheezy

RUN     apt-get update &&\
          apt-get install -y curl make gcc
RUN     cd /usr/local/src &&\
          curl -O http://repo.or.cz/w/pachi.git/snapshot/pachi-11.00-retsugen.tar.gz &&\
          tar zxf pachi-11.00-retsugen.tar.gz
RUN     cd /usr/local/src/pachi-pachi-11.00-retsugen-9f8c498 && make
RUN     mv /usr/local/src/pachi-pachi-11.00-retsugen-9f8c498/pachi /usr/local/bin/pachi

ENTRYPOINT ["/usr/local/bin/pachi"]
