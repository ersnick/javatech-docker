ARG DEFAULT_REGISTRY=docker.io
ARG DEFAULT_REPOSITORY=library

FROM ${DEFAULT_REGISTRY}/${DEFAULT_REPOSITORY}/maven:3.6.3-jdk-11 as builder
WORKDIR /source
COPY . /source
RUN mvn clean package

FROM ${DEFAULT_REGISTRY}/bellsoft/liberica-openjre-alpine:11
WORKDIR /app
COPY --from=builder /source/target/demo-0.0.1-SNAPSHOT.jar /app
EXPOSE 7000
CMD java -jar demo-0.0.1-SNAPSHOT.jar
