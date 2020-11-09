FROM tomcat:8.0-alpine
WORKDIR /

ADD CentralService.war /opt/bitnami/apache-tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]