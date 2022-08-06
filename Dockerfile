FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY /job/project1/56/execution/node/3/ws/target/*.war /usr/local/tomcat/webapps/java-web-app.war
#FROM ubuntu:latest

#MAINTAINER ybmsr <ybmadhu404@gmail.com>

#WORKDIR /usr/apps/hello-docker/

#RUN apt-get -y update

#RUN apt-get install -y nodejs

#RUN apt-get install -y npm

##RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

#RUN npm install -g http-server

#ADD . /usr/apps/hello-docker/

#ADD index.html /usr/apps/hello-docker/index.html

#CMD ["http-server", "-s"]

