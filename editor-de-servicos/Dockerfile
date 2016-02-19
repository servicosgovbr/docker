FROM centos:centos7

#
# Pull Zulu OpenJDK binaries from official repository:
#
RUN rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems
RUN curl -o /etc/yum.repos.d/zulu.repo http://repos.azulsystems.com/rhel/zulu.repo
RUN yum -q -y update
RUN yum -q -y install zulu-8-8.11.0.1-1

ADD yum.repo /etc/yum.repos.d/editor-de-servicos.repo
RUN rpm --import https://raw.githubusercontent.com/servicosgovbr/editor-de-servicos/master/src/main/resources/static/GPG-KEY
RUN yum install -y editor-de-servicos

ADD run.sh /run.sh

EXPOSE 8090
CMD sh /run.sh
