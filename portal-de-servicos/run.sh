#!/bin/bash

pushd /var/lib/portal-de-servicos
  java $JAVA_OPTS -jar /opt/portal-de-servicos/lib/portal-de-servicos.jar
popd
