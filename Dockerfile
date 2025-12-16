FROM alpine:latest

WORKDIR /app

COPY pocketbase .
COPY pb_data ./pb_data
COPY start.sh .

RUN chmod +x pocketbase start.sh

EXPOSE 8080

CMD ["./start.sh"]
