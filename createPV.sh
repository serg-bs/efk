#!/bin/bash
for var in {50..150}
do
#mkdir /opt/env/test${var}
#sudo chmod 777 /opt/env/test${var}
sed -i "s/pv$((var-1))/pv${var}/g" pv.yaml
sed -i "s/test$((var-1))/test${var}/g" pv.yaml
kubectl create -f pv.yaml
done