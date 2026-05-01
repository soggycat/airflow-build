# ---- builder stage ----
FROM python:3.12 as builder

RUN apt-get update && apt-get install -y build-essential

COPY requirements.txt .
RUN pip install --prefix=/install -r requirements.txt

# ---- final stage ----
FROM docker.io/soggycat/airflow:v2.11.2

USER airflow

COPY --from=builder /install /usr/local
