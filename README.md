## EFK стек построенный на базе 
За основу взята статься 
[Collect and Analyze Log Data for a Kubernetes Cluster with Bitnami's Elasticsearch, Fluentd and Kibana Charts](https://docs.bitnami.com/tutorials/integrate-logging-kubernetes-kibana-elasticsearch-fluentd/)



## Запуск
1. ```kubectl create ns efk```
2. ```helm dependeny update```
3. ```helm upgrade --install efk -n efk .```