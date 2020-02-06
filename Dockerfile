ARG version=x

FROM flink:${version}
LABEL maintainer="maiktheknife@gmail.com"

ARG slots=1

RUN mkdir -p /app && chown flink:flink /app

COPY app/generator.py /app/
COPY app/docker-entrypoint.sh /
COPY app/flink-conf-${slots}.yaml /opt/flink/conf/flink-conf.yaml

RUN chown flink:flink /opt/flink/conf/flink-conf.yaml
RUN chmod 644 /opt/flink/conf/flink-conf.yaml

#RUN apt-get update
#RUN apt-get install -y python3
#RUN apt-get clean

#RUN python3 /app/generator.py same
