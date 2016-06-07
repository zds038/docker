FROM anapsix/alpine-java
MAINTAINER zhangds "zds038@qq.com"
RUN wget http://7xukeq.com1.z0.glb.clouddn.com/MagicTunnel.war
RUN wget http://7xukeq.com1.z0.glb.clouddn.com/apache-tomcat-9.0.0.M6.zip
RUN unzip apache-tomcat-9.0.0.M6.zip /opt
COPY MagicTunnel.war /opt/apache-tomcat-9.0.0.M6/webapps
WORKDIR /opt/apache-tomcat-9.0.0.M6/bin
EXPOSE 80
CMD ["catalina.sh", "run"]
