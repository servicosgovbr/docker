FROM centos

ADD yum.repo /etc/yum.repos.d/editor.repo
ADD run.sh /run.sh

RUN rpm --import https://raw.githubusercontent.com/servicosgovbr/editor-de-servicos/master/src/main/resources/static/GPG-KEY
RUN yum install -y java-1.8.0-openjdk-devel editor-de-servicos

ADD known_hosts /root/.ssh/known_hosts

EXPOSE 8090
CMD sh /run.sh
