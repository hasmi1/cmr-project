FROM tomcat:9.0 
COPY target/my-app-1.0-SNAPSHOT.var /usr/local/tomcat9/webapps/my-app-1.0-SNAPSHOT.var
