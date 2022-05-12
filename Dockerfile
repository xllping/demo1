FROM nginx
WORKDIR /home/demo/
ENV RUN_ENV="dev"
ENV JAVA_OPTS=""
ENV SKYWALKING_AGENT=""
ENV JAVA_OPTS_INNER=" -XX:+UseContainerSupport -XX:MaxRAMPercentage=75.0 -XX:MinRAMPercentage=50.0 -XX:InitialRAMPercentage=50.0 -XX:+PrintCommandLineFlags "
ADD ./target/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT [ "sh", "-c", "ls -alth" ]
