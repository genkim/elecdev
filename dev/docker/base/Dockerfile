FROM centos:7
ENV container docker

RUN yum update -y

RUN yum install -y git less sudo wget gcc gcc-c++ make

RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -

RUN yum install -y nodejs

RUN npm install -g n
RUN n 8.2.1

WORKDIR /vagrant
CMD ["/vagrant/dev/docker/base/init.sh"]