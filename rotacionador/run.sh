#!/bin/bash

while true; do
  curator --host "$ESNAME" delete --disk-space "$BIGGER_THAN_GIGA" indices --prefix logstash
  sleep $(( 60*60*$INTERVAL_IN_HOURS ))
done
