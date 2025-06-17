FROM tomcat:10
COPY abc.war /usr/local/tomcat/webapps/
RUN sed -i 's/port="8080"/port="8081"/g' /usr/local/tomcat/conf/server.xml
CMD ["catalina.sh", "run"]
EXPOSE 8081