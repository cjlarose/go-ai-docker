# Download binary from http://www.math-info.univ-paris5.fr/~bouzy/INDIGO.html
# License: UNKNOWN
FROM     debian:wheezy

RUN      dpkg --add-architecture i386
RUN      apt-get update &&\
           apt-get install -y lib32z1 libstdc++6:i386 curl

RUN      curl -o /usr/local/bin/indigo http://www.math-info.univ-paris5.fr/~bouzy/Indigo2006.19x19
RUN      chmod +x /usr/local/bin/indigo

ENTRYPOINT ["/usr/local/bin/indigo"]
CMD        ["-gtp"]
