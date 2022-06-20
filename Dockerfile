FROM centos:latest

MAINTAINER web <chindam75@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN  yum update -y

RUN yum install install -y nodejs

RUN yum install install -y npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
