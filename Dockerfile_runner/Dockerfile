FROM python:3.9-slim

ENV DB_HOST="container-acr-db"
ENV DB_NAME="DashboardGestaoAPI"
ENV DB_USER="postgres"
ENV DB_PORT=5432
ENV DB_PASSWORD="postgres"
ENV NR_SECONDS_NEXT_ATTEMPT=3
ENV KAFKA_BOOTSTRAP_SERVER="container-acr-kafka:9092"
ENV KAFKA_GROUP_ID="acr-dashboard-runner"

RUN apt-get update && \
    apt-get install -y git iputils-ping && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git clone -b kafka_consumer https://github.com/andreruizrt/automatic-code-review-dashboard-runner.git .

RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

RUN mkdir -p /app/groups/DashboardGestaoAPI/resources/configs/acr-regex
COPY config.json /app/groups/DashboardGestaoAPI/resources/configs/acr-regex

RUN mkdir -p /app/groups/DashboardGestaoAPI/resources/extensions/acr-regex
RUN git clone https://github.com/automatic-code-review/acr-regex.git /app/groups/DashboardGestaoAPI/resources/extensions/acr-regex
RUN cd /app/groups/DashboardGestaoAPI/resources/extensions/acr-regex && pip install --no-cache-dir -r requirements.txt

RUN mkdir -p /app/groups/DashboardGestaoAPI/resources/output

CMD ["python", "app.py"]
