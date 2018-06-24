FROM openjdk:latest
ARG CACHEBUST=1
ARG JAR_FILE
ARG SPRING_PROFILE=dev
ARG artifactId
ENV WORK_DIR=/usr/src/
ENV SOURCE_DEST=target/${JAR_FILE}
ENV DOCKER_DEST=${WORK_DIR}${artifactId}.jar
WORKDIR ${WORK_DIR}
COPY ${SOURCE_DEST} ${DOCKER_DEST}
#EXPOSE 3100

#CMD java -cp ${DOCKER_DEST} elr.ws.elrws.DemoApplication
CMD java -Dspring.profiles.active=$SPRING_PROFILE -Djava.security.egd=file:/dev/./urandom -t ${artifactId} -jar ${DOCKER_DEST}
#ENTRYPOINT exec java $JAVA_OPTS -Dspring.profiles.active=$SPRING_PROFILE -Djava.security.egd=file:/dev/./urandom -t ${artifactId} -jar ${DOCKER_DEST}
