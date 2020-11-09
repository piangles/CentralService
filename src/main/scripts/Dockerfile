FROM tomcat:jdk8-corretto
WORKDIR /

ADD CentralService.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]