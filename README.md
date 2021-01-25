## EFK стек построенный на базе 
За основу взята статься 
[Collect and Analyze Log Data for a Kubernetes Cluster with Bitnami's Elasticsearch, Fluentd and Kibana Charts](https://docs.bitnami.com/tutorials/integrate-logging-kubernetes-kibana-elasticsearch-fluentd/)

## Запуск
1. ```kubectl create ns efk```
2. ```helm dependency update .```
3. ```helm upgrade --install efk -n efk .```

Проверка работоспособности еластика, зайти внутрь пода, выполнить 
```curl -XGET http://localhost:9200 -u 'admin:admin' --insecure``` 

Если необходимо изменить конфигурацию security недостаточно просто поменять секреты, 
надо еще заставить перебилдить индексы отвечающие за секреты 
1. Перейти в дирректорию 
```cd /opt/bitnami/elasticsearch/plugins/opendistro_security/tools```
2. Запустить
```./securityadmin.sh -cd ../securityconfig/  -icl -nhnv      -cacert /opt/bitnami/elasticsearch/config/root-ca.pem      -cert /opt/bitnami/elasticsearch/config/kirk.pem      -key /opt/bitnami/elasticsearch/config/kirk-key.pem```
 