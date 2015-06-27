FROM maven:3

RUN mkdir -p /app
WORKDIR /app

ADD pom.xml /app/pom.xml

#RUN mvn dependency:copy-dependencies

RUN mvn process-sources

ADD . /app
