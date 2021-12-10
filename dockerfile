#Especificamos la imagen de docker hub a usar
FROM maven:3.8.4-jdk-11

#Nombre del autor
MAINTAINER Endika Sayago (esayago001@ikasle.ehu.eus)

#Copiamos los ficheros necesarios para que maven pueda trabajar
COPY pom.xml /tmp/pom.xml
COPY src /tmp/src
COPY script.sh /tmp/script.sh
RUN chmod +x /tmp/script.sh

#Colocamos /tmp como directorio de trabajo
WORKDIR /tmp

#compilamos el programa con maven
RUN mvn -f /tmp/pom.xml clean package
RUN mkdir /tmp/app
RUN cp /tmp/target/docker-app-1.0-SNAPSHOT.jar /tmp/app/aplicacion.jar

#ejecutamos el programa
#CMD java -jar /tmp/aplicacion.jar
