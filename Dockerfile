FROM eclipse-temurin:11-jdk-alpine
COPY ./SpringBootDemoMySql-0.0.1-SNAPSHOT.jar /app/SpringBootDemoMySql-0.0.1-SNAPSHOT.jar
COPY ./application.properties /app/application.properties
RUN chmod 770 /app/SpringBootDemoMySql-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar","/app/SpringBootDemoMySql-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080