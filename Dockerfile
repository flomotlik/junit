FROM maven:3

RUN mkdir -p /app
WORKDIR /app

ADD pom.xml /app/pom.xml

RUN mvn dependency:go-offline -B
RUN mvn dependency:copy-dependencies -B

ADD . /app
