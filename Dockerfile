FROM zzrot/alpine-node
MAINTAINER zhangds "dongsen.zhang@hydosky.com"
EXPOSE 3000
WORKDIR /azwraith
COPY ./ /azwraith
CMD node /azwraith/bin/www
