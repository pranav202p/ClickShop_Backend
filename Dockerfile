# Use an official Tomcat image
FROM tomcat:10.1-jdk17

# Remove the default webapps to clean up
RUN rm -rf /usr/local/tomcat/webapps/*

# Add your WAR file to the webapps directory
COPY Backend/target/Backend-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (default for Tomcat)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
