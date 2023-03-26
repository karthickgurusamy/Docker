FROM centos:7
MAINTAINER Karthick
RUN yum install wget -y
RUN yum install java-11-openjdk-devel -y
RUN java -version
RUN yum install sudo -y
RUN curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
RUN rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
RUN yum install jenkins -y
RUN yum install /sbin/service -y
RUN echo -e "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN yum install net-tools -y
RUN yum install git -y
RUN yum install python3 -y 
CMD service jenkins start -DEFOREGROUND && /bin/bash
RUN echo "/etc/rc.d/init.d/jenkins start" >> /etc/bashrc
EXPOSE 8080
