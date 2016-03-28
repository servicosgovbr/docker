FROM centos:centos7

RUN rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems
RUN curl -s -o /etc/yum.repos.d/zulu.repo http://repos.azulsystems.com/rhel/zulu.repo
RUN yum -y update
RUN yum -y install zulu-8-8.13.0.5-1
RUN curl -s -L -o /usr/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && chmod +x /usr/bin/jq

ARG SNAP_API_KEY
ARG SNAP_PIPELINE_COUNTER

ENV CURL_FLAGS="-s -L -u ${SNAP_API_KEY}"

RUN curl ${CURL_FLAGS} https://api.snap-ci.com/project/servicosgovbr/editor-de-servicos/branch/master/pipelines/${SNAP_PIPELINE_COUNTER} | jq '.stages[1].workers[0].artifacts[0].download_url' | xargs curl -o editor-de-servicos-latest.rpm ${CURL_FLAGS}

RUN yum install -y editor-de-servicos-latest.rpm

ADD run.sh /run.sh

EXPOSE 8080
CMD sh /run.sh
