FROM openjdk:8-jre-alpine
VOLUME /tmp
ARG DOCKERIZE_VERSION=v0.6.1

ADD target/spring-webflux-streaming-0.0.1-SNAPSHOT.jar /app.jar
RUN touch /app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]