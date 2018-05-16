FROM openjdk:8-jdk-alpine
ENV PORT 8080
ENV CLASSPATH /opt/lib
EXPOSE 8080

# use wildcards to avoid this command failing if there's no target/lib directory
COPY target/lib* /opt/
COPY target/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]