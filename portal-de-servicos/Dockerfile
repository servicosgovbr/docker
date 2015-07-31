FROM centos

ADD yum.repo /etc/yum.repos.d/portal.repo
ADD run.sh /run.sh

RUN rpm --import https://raw.githubusercontent.com/servicosgovbr/portal-de-servicos/master/src/main/resources/static/GPG-KEY
RUN yum install -y java-1.8.0-openjdk-devel portal-de-servicos

EXPOSE 8080
CMD sh /run.sh
