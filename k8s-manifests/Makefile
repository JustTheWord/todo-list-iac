# Makefile to concatenate all yaml files into a single file

OUTPUT_FILE := aks-store-quickstart.yaml
FILES := \
app/app-namespace.yaml \
app/app-configmap.yaml \
postgress/postgres-pv.yaml \
postgress/postgres-pvc.yaml \
redis/redis-pv.yaml \
redis/redis-pvc.yaml \
postgress/postgres-deployment.yaml \
app/app-api.yaml \
app/app-email-sender.yaml \
app/app-scheduler.yaml \
redis/redis-deployment.yaml \
rabbitmq/rabbitmq-deployment.yaml \
postgress/postgres-service.yaml \
app/app-api-service.yaml \
redis/redis-service.yaml \
rabbitmq/rabbitmq-service.yaml \
efk/elasticsearch/elasticsearch-pv.yaml \
efk/elasticsearch/elasticsearch-pvc.yaml \
efk/elasticsearch/elasticsearch-deployment.yaml \
efk/elasticsearch/elasticsearch-service.yaml \
efk/fluentd/fluentd-configmap.yaml \
efk/fluentd/fluentd-daemonset.yaml \
efk/fluentd/fluentd-service.yaml \
efk/kibana/kibana-deployment.yaml \
efk/kibana/kibana-service.yaml



.PHONY: concat

concat:
	@> $(OUTPUT_FILE)
	@for file in $(FILES); do \
		cat $$file >> $(OUTPUT_FILE); \
	done
	@echo "Quickstart manifest generated at $(OUTPUT_FILE)"

