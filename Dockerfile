FROM adoptopenjdk:8

COPY pom.xml .

RUN mvn dependency:go-offline -B

COPY src ./src

COPY --from=builder /target/spring.jar ./spring.jar

EXPOSE 8082

CMD ["java", "-jar", "spring.jar"]
