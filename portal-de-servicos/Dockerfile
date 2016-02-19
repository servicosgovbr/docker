FROM centos:centos7

RUN rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems
RUN curl -o /etc/yum.repos.d/zulu.repo http://repos.azulsystems.com/rhel/zulu.repo
RUN yum -q -y update
RUN yum -q -y install zulu-8-8.11.0.1-1 

ADD yum.repo /etc/yum.repos.d/portal-de-servicos.repo
RUN rpm --import https://raw.githubusercontent.com/servicosgovbr/portal-de-servicos/master/src/main/resources/static/GPG-KEY
RUN yum install -y portal-de-servicos

ADD run.sh /run.sh

EXPOSE 8080
CMD sh /run.sh
