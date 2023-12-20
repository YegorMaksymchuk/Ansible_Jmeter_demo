#! /bin/bash

curl https://dlcdn.apache.org//jmeter/binaries/apache-jmeter-5.6.2.tgz --output jmeter.tgz
tar -xvf jmeter.tgz && mv ./apache-jmeter-5.6.2 ./jmeter