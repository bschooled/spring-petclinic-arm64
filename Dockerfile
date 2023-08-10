FROM eclipse-temurin:latest as Base
WORKDIR /app
COPY .mvn/ .mvn 
COPY mvnw pom.xml ./
RUN ./mvnw dependency:resolve
COPY src ./src
CMD [ "./mvnw", "spring-boot:run" ]