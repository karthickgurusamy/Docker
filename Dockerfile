FROM centos:7
MAINTAINER Karthick
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.73/bin/apache-tomcat-9.0.73.tar.gz
RUN tar -xf apache-tomcat-9.0.73.tar.gz
RUN mv  apache-tomcat-9.0.73/* /opt/tomcat/.
RUN yum install java-11-openjdk-devel -y
RUN java -version
COPY tomcat-users.xml /opt/tomcat/conf/
COPY context.xml /opt/tomcat/webapps/manager/META-INF/
COPY SampleWebApp.war /opt/tomcat/webapps
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
