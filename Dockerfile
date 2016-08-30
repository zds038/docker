FROM ubuntu:14.04
MAINTAINER zhangds "zds038@qq.com"
ADD http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.tar.gz /opt
ADD http://mirrors.cnnic.cn/apache/tomcat/tomcat-9/v9.0.0.M9/bin/apache-tomcat-9.0.0.M9.tar.gz /opt
ENV JAVA_HOME /opt/jdk1.8.0_101
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH
RUN mkdir /home/upload
RUN chmod 777 /home/upload
EXPOSE 8080
CMD ["/opt/apache-tomcat-9.0.0.M9/bin/catalina.sh", "run"]
