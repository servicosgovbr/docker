FROM centos:centos7

RUN rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems && \
    curl -o /etc/yum.repos.d/zulu.repo http://repos.azulsystems.com/rhel/zulu.repo && \
    yum -q -y update && \
    yum -q -y install zulu

ADD yum.repo /etc/yum.repos.d/portal-de-servicos.repo
RUN rpm --import https://raw.githubusercontent.com/servicosgovbr/portal-de-servicos/master/src/main/resources/static/GPG-KEY && \
    yum -q -y update && \
    yum install -y portal-de-servicos

ADD run.sh /run.sh

EXPOSE 8080
CMD sh /run.sh
