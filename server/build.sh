#!/bin/bash

docker build -t us.icr.io/sn-labs-phmngcduy/dealership .
docker push us.icr.io/sn-labs-phmngcduy/dealership
kubectl apply -f deployment.yaml
kubectl port-forward deployment.apps/dealership 8000:8000
