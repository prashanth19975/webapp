# FROM tomcat:8.0.20-jre8
# COPY target/Example-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/sample.war

FROM centos:latest

WORKDIR /usr/apps/hello-docker/

RUN yum update -y

RUN yum install nodejs -y

RUN yum install install  npm -y

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
