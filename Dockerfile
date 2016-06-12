FROM anapsix/alpine-java
MAINTAINER zhangds "zds038@qq.com"
RUN wget http://7xukeq.com1.z0.glb.clouddn.com/apache-tomcat-9.0.0.M6.tar.gz
RUN tar -zxvf apache-tomcat-9.0.0.M6.tar.gz -C /home/
ADD http://7xukeq.com1.z0.glb.clouddn.com/LKcustoms.war /home/apache-tomcat-9.0.0.M6/webapps
RUN ls /home/apache-tomcat-9.0.0.M6/bin
RUN chmod -R 777 /home/apache-tomcat-9.0.0.M6/
EXPOSE 80
CMD ["/home/apache-tomcat-9.0.0.M6/bin/catalina.sh", "run"]

