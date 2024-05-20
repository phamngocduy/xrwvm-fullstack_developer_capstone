#!/bin/bash

#docker build . -t us.icr.io/sn-labs-phmngcduy/senti_analyzer
#docker push us.icr.io/sn-labs-phmngcduy/senti_analyzer
#ibmcloud ce app create --name sentianalyzer --image us.icr.io/sn-labs-phmngcduy/senti-analyzer --registry-secret icr-secret --port 5000

docker build . -t senti_analyser
docker images
docker run -p 5000:5000 senti_analyser:latest
