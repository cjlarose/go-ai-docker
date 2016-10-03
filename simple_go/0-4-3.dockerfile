# Download source from http://sourceforge.net/projects/londerings/
# License: GNU General Public License version 2.0 (GPLv2)
FROM    debian:wheezy

RUN     apt-get update && apt-get install -y python curl bzip2
RUN     cd /usr/local/src &&\
          curl -O -L http://downloads.sourceforge.net/project/londerings/go/simple_go/simple_go_0_4_3_py.tar.bz2 &&\
          tar xf simple_go_0_4_3_py.tar.bz2

ENTRYPOINT ["python", "/usr/local/src/simple_go_0_4_3_py/play_gtp.py"]
