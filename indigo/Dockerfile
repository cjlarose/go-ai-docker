# Download binary from http://www.math-info.univ-paris5.fr/~bouzy/INDIGO.html
# License: UNKNOWN
FROM     cjlarose/baduk.io-base
RUN      dpkg --add-architecture i386
RUN      apt-get update
RUN      apt-get install -y lib32z1 libstdc++6:i386

RUN      curl -o /usr/local/bin/indigo http://www.math-info.univ-paris5.fr/~bouzy/Indigo2006.19x19
RUN      chmod +x /usr/local/bin/indigo

CMD      /usr/local/bin/indigo -gtp
