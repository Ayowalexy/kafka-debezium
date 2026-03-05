FROM bitnamilegacy/kafka:3.4

USER root
COPY fix-permissions.sh /fix-permissions.sh
RUN chmod +x /fix-permissions.sh
ENTRYPOINT ["/fix-permissions.sh"]

EXPOSE 9092
