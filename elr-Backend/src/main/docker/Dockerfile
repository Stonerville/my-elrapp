
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ARG JAR_FILE
ARG CACHEBUST=1
ARG SPRING_PROFILE=dev
ARG artifactId
ENV DOCKER_DEST=${artifactId}.jar
COPY ${JAR_FILE} ${DOCKER_DEST}
RUN sh -c 'touch '${DOCKER_DEST}
# ENV APPNAME=elrws
# ENV BUILD_NAME=${APPNAME}-0.0.1-SNAPSHOT.jar
# ENV DOCKER_DEST=my-${APPNAME}.jar
# ENV BUILD_SOURCE=target/${BUILD_NAME}
# ADD ${BUILD_SOURCE} ${DOCKER_DEST}
EXPOSE 3100
ENTRYPOINT exec java $JAVA_OPTS -Dspring.profiles.active=$SPRING_PROFILE -Djava.security.egd=file:/dev/./urandom -jar ${DOCKER_DEST}
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar my-elrapp.jar
