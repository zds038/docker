FROM node:6
MAINTAINER zhangds "dongsen.zhang@hydosky.com"
EXPOSE 3000
RUN mkdir /azwraith
ADD http://7xukeq.com1.z0.glb.clouddn.com/azwraith.tar.gz /azwraith
WORKDIR /azwraith
RUN apt-get update \
  && apt-get install git-core
RUN npm install --production
RUN npm install -g bower
RUN bower install --allow-root
CMD node /azwraith/bin/www
