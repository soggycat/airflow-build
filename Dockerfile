FROM docker.io/soggycat/airflow:v2.11.2

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        build-essential \
        curl \
    && apt-get clean
    
USER airflow
