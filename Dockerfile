FROM docker.io/soggycat/airflow:v2.11.2

USER root

RUN microdnf update -y && \
    microdnf install -y \
        gcc \
        gcc-c++ \
        make \
        curl \
    && microdnf clean all

USER airflow
