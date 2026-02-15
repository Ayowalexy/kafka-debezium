FROM debezium/connect:2.3

EXPOSE 8083

ENV GROUP_ID=connect-cluster
ENV CONFIG_STORAGE_TOPIC=connect-configs
ENV OFFSET_STORAGE_TOPIC=connect-offsets
ENV STATUS_STORAGE_TOPIC=connect-status
ENV KEY_CONVERTER=org.apache.kafka.connect.json.JsonConverter
ENV VALUE_CONVERTER=org.apache.kafka.connect.json.JsonConverter
ENV KEY_CONVERTER_SCHEMAS_ENABLE=false
ENV VALUE_CONVERTER_SCHEMAS_ENABLE=false
ENV PLUGIN_PATH=/kafka/connect

CMD ["/docker-entrypoint.sh"]