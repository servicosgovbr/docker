FROM azul/zulu-openjdk-centos

ADD yum.repo /etc/yum.repos.d/editor-de-servicos.repo
RUN rpm --import https://raw.githubusercontent.com/servicosgovbr/editor-de-servicos/master/src/main/resources/static/GPG-KEY
RUN yum install -y editor-de-servicos

ADD run.sh /run.sh

EXPOSE 8090
CMD sh /run.sh
