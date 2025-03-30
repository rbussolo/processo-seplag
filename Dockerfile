FROM tomcat:10.0

RUN mv /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps/

WORKDIR /usr/local/tomcat/webapps/

ADD processo_seplag.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
