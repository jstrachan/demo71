FROM openjdk:8-jdk-alpine
ENV PORT 8080
ENV CLASSPATH /opt/lib
EXPOSE 8080
COPY target/lib/*.jar /opt/lib
COPY target/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]