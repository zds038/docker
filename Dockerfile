FROM zzrot/alpine-node
MAINTAINER zhangds "dongsen.zhang@hydosky.com"
EXPOSE 3000
RUN mkdir /azwraith
WORKDIR /azwraith
ADD http://7xukeq.com1.z0.glb.clouddn.com/azwraith.tar.gz /azwraith
CMD node /azwraith/bin/www
