FROM anapsix/alpine-java
MAINTAINER zhang ds "zds038@qq.com"
RUN mkdir /rooftrellen
WORKDIR /rooftrellen
RUN wget http://down.kaijie.club/filedown/rooftrellen-1.0-SNAPSHOT.zip
RUN unzip rooftrellen-1.0-SNAPSHOT.zip
WORKDIR /rooftrellen/rooftrellen-1.0-SNAPSHOT
CMD ./bin/rooftrellen -Dplay.crypto.secret=zerolinke
