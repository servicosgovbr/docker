FROM centos

RUN yum install -y java-1.8.0-openjdk-devel

ADD yum.repo /etc/yum.repos.d/editor-de-servicos.repo
RUN rpm --import https://raw.githubusercontent.com/servicosgovbr/editor-de-servicos/master/src/main/resources/static/GPG-KEY
RUN yum install -y editor-de-servicos

ADD run.sh /run.sh
ADD known_hosts /root/.ssh/known_hosts

EXPOSE 8090
CMD sh /run.sh
