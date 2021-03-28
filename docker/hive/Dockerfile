# This Dockerfile contains Apache Hive and example datasets to be
# populated into the server.  To COPY .sql dataset files outside of
# this directory into the image, we need to run docker build from the
# root directory of the SQLFlow source tree.
#
# To build this image:
#
#  cd $(git rev-parse --show-toplevel)
#  docker build -t sqlflow:hive -f docker/hive/Dockerfile .
#
# To start a container executing this image:
#
#  docker run --rm -d -P --name hive_server -v $PWD:/notify sqlflow:hive
#
# To start a client container that can access this image:
#
#  docker run --rm --net=container:hive_server -v $PWD:/notify sqlflow:ci
#
# The bind mount of $PWD on the host to /notify allows the
# sqlflow:mysql container to create a file in the directory after
# populating datasets, and the container running sqlflow:ci can use
# inotifywait to wait for the creation of this file before it go on
# running tests.
FROM adoptopenjdk/openjdk8:alpine-slim

# Install sample datasets for CI and demo.
COPY doc/datasets/popularize_churn.sql \
     doc/datasets/popularize_iris.sql \
     doc/datasets/popularize_boston.sql \
     doc/datasets/popularize_creditcardfraud.sql \
     doc/datasets/popularize_imdb.sql \
     doc/datasets/create_model_db.sql \
     doc/datasets/popularize_energy.sql \
     doc/datasets/popularize_cora.sql \
     doc/datasets/popularize_give_me_some_credit.sql \
     /datasets/

ARG FIND_FASTED_MIRROR=true

COPY docker/dev/find_fastest_resources.sh /usr/local/bin/
RUN /bin/sh -c 'if [ "$FIND_FASTED_MIRROR" == "true" ]; then source find_fastest_resources.sh && \
    choose_fastest_alpine_source; fi'

WORKDIR /opt

ENV HADOOP_HOME=/opt/hadoop-3.3.0
ENV HIVE_HOME=/opt/apache-hive-3.1.2-bin
ENV HIVE_CONF_DIR=${HIVE_HOME}/conf
ENV HADOOP_CLASSPATH=/opt/hadoop-3.3.0/share/hadoop/tools/lib/aws-java-sdk-bundle-1.11.563.jar:/opt/hadoop-3.3.0/share/hadoop/tools/lib/hadoop-aws-3.3.0.jar

# Include additional jars
#ENV HADOOP_CLASSPATH=/opt/hadoop-3.3.0/share/hadoop/tools/lib/aws-java-sdk-bundle-1.11.271.jar:/opt/hadoop-2.10.1/share/hadoop/tools/lib/hadoop-aws-2.10.1.jar

RUN apk update && apk add --no-cache curl bash && \
    curl -L https://downloads.apache.org/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz | tar zxf - && \
    curl -L https://downloads.apache.org/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz | tar zxf -
#    apt-get install -y libk5crypto3 libkrb5-3 libsqlite3-0
#COPY docker/mysql/start.bash /

RUN mkdir -p /usr/local/var/hive

RUN rm $HIVE_HOME/lib/guava-19.0.jar && cp $HADOOP_HOME/share/hadoop/common/lib/guava-27.0-jre.jar $HIVE_HOME/lib/

COPY docker/hive/conf ${HIVE_CONF_DIR}

RUN addgroup --system --gid 1000 hive && \
    adduser --system --ingroup hive --uid 1000 --home ${HIVE_HOME} hive && \
    chown hive:hive -R ${HIVE_HOME}

USER hive
WORKDIR $HIVE_HOME
#Expose Hive Port
ARG HIVE_PORT="9083"
ENV HIVE_PORT=$HIVE_PORT
EXPOSE $MYSQL_PORT

RUN ./bin/schematool -dbType derby -initSchema

#CMD ["bin/beeline", "-u", "jdbc:hive2://"]
