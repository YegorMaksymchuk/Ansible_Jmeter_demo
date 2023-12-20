#!/usr/bin/env bash

export AWS_ACCESS_KEY=$1
export AWS_SECRET_KEY=$2
export AWS_ES_ENDPOINT=$3
export AWS_REGION=$4
export NUMBER_OF_THREAD_GROUP=$5
export RAMP_UP_PERIOD=$6
export LOOP_COUNT=$7
REPORT_TIME=$(date +"%F-%H-%M")
#SET DT=%date%_%time:~0,2%.%time:~3,2%


if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <scenario_file.jmx>"
    exit 1
fi

case "$1" in
"1")
    echo "Running JMeter scenario with Variant 1: , Parameter: $PARAMETER_VALUE"
    java -jar ./jmeter/bin/ApacheJMeter.jar -f -t ./tests/google.jmx -l ./results/result-$REPORT_TIME.jtl -e -o ./report/$REPORT_TIME
    ;;
"2")
    echo "Running JMeter scenario with Variant 2: , Parameter: $PARAMETER_VALUE"
    java -jar ./jmeter/bin/ApacheJMeter.jar -f -t ./tests/duck-go-go.jmx -l ./results/result-$REPORT_TIME.jtl -e -o ./report/$REPORT_TIME
    ;;
*)
    echo "Invalid variant. Please specify one of: 1, 2 where 1 is Google and 2 is DuckGoGo test"
    exit 1
    ;;
esac
