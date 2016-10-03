# Download source from http://sourceforge.net/projects/fuego/
# License: GNU Lesser General Public License version 3.0
FROM    debian:wheezy

RUN     apt-get update && apt-get install -y \
          curl \
          g++ \
          gawk \
          libboost-dev \
          libboost-filesystem-dev \
          libboost-program-options-dev \
          libboost-test-dev \
          libboost-thread-dev \
          make
RUN     cd /usr/local/src &&\
          curl -O -L http://sourceforge.net/projects/fuego/files/fuego/1.1/fuego-1.1.tar.gz &&\
          tar zxf fuego-1.1.tar.gz

# This version expects an older version of libboost, and there were some
# breaking API changes
RUN     sed -i 's/native_file_string/string/g' \
          /usr/local/src/fuego-1.1/go/GoGtpEngine.cpp \
          /usr/local/src/fuego-1.1/fuegomain/FuegoMainUtil.cpp

RUN     cd /usr/local/src/fuego-1.1 &&\
          ./configure &&\
          make CXXFLAGS="-g -O2 -DNDEBUG -Wall -Wextra -fpermissive" &&\
          make install

ENTRYPOINT ["/usr/local/bin/fuego"]
