FROM openjdk:11

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
    BEFORE_START_SLEEP=3 \
    JAVA_OPTS="" \
    SERVER_PORT=8080

CMD echo "The application will start in ${BEFORE_START_SLEEP}s..." && \
    sleep ${BEFORE_START_SLEEP} && \
    echo $(head -1 /etc/hosts | cut -f1) ${HOST_NAME} >> /etc/hosts && \
    java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar /app.jar --server.port=$SERVER_PORT
    
ADD target/*.jar /app.jar