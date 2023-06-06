FROM debian:stable-slim

ENV DATABASE_URL=$DATABASE_URL

RUN apt-get update
RUN apt-get install -y libpq5

COPY wizard-point-counter /wizard-point-counter

ENTRYPOINT ["./wizard-point-counter"]

EXPOSE 8080