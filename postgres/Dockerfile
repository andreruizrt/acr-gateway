FROM postgres:13-alpine

ENV POSTGRES_USER="postgres"
ENV POSTGRES_PASSWORD="postgres"
ENV POSTGRES_DB="DashboardGestaoAPI"

RUN wget https://raw.githubusercontent.com/automatic-code-review/automatic-code-review-dashboard/refs/heads/main/database/V1__database.sql && \
    mv V1__database.sql /docker-entrypoint-initdb.d/

# RUN psql -U postgres -d "DashboardGestaoAPI" -f /docker-entrypoint-initdb.d/V1__database.sql

EXPOSE 5432