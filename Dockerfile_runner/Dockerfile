FROM python:3.9-slim

ENV DB_HOST="container-acr-db"
ENV DB_NAME="DashboardGestaoAPI"
ENV DB_USER="postgres"
ENV DB_PORT=5432
ENV DB_PASSWORD="postgres"
ENV NR_SECONDS_NEXT_ATTEMPT=3
ENV GIT_USER_NAME="GIT_USER_NAME"
ENV GIT_TOKEN="GIT_TOKEN"

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git clone --depth 1 https://github.com/andreruizrt/automatic-code-review-dashboard-runner.git .

RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

CMD ["python", "app.py"]
