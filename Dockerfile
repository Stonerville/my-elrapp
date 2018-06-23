
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ENV BUILD_NAME=elrapp-0.0.1-SNAPSHOT.jar
ENV DOCKER_DEST=my-elrapp.jar
ENV BUILD_SOURCE=target/${BUILD_NAME}
ADD ${BUILD_SOURCE} ${DOCKER_DEST}
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar ${DOCKER_DEST}
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar my-elrapp.jar
