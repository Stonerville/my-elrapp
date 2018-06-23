
FROM openjdk:8-jdk-alpine
VOLUME /tmp

# ARG JAR_FILE
# COPY ${JAR_FILE} app.jar

ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ENV APPNAME=elrws
ENV BUILD_NAME=${APPNAME}-0.0.1-SNAPSHOT.jar
ENV DOCKER_DEST=my-${APPNAME}.jar
ENV BUILD_SOURCE=target/${BUILD_NAME}
ADD ${BUILD_SOURCE} ${DOCKER_DEST}
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar ${DOCKER_DEST}
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar my-elrapp.jar
