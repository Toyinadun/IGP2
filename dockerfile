FROM tomcat
COPY /var/lib/jenkins/workspace/CI-job/target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/ 
RUN sed -i 's/port="8080"/port="8081"/g' /usr/local/tomcat/conf/server.xml
CMD ["Catalina.sh", "run"]
EXPOSE 8081

