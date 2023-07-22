FROM adoptopenjdk:8

COPY pom.xml .

COPY src ./src

EXPOSE 8082

CMD ["java", "-jar", "spring.jar"]
