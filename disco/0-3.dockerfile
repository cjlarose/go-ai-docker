# Get source from http://shed-skin.blogspot.com/2009/08/disco-elegant-python-go-player-update.html
# License: GPL
# Only supports boardsize 9
FROM   debian:wheezy

RUN    apt-get update && apt-get install -y python-dev shedskin curl

RUN    cd /usr/local/src &&\
         curl -L -O https://sites.google.com/site/markdufour/disco-0.3.tgz &&\
         tar zxf disco-0.3.tgz
RUN    cd /usr/local/src/disco-0.3 &&\
         shedskin -brew go.py &&\
         make

ENTRYPOINT ["python", "/usr/local/src/disco-0.3/disco.py"]
