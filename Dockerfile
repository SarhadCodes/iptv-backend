FROM alpine:latest

WORKDIR /app

# Install required tools
RUN apk add --no-cache ca-certificates tzdata

# Copy PocketBase binary and data
COPY pocketbase /app/pocketbase
COPY pb_data /app/pb_data
COPY start.sh /app/start.sh

# Make executable
RUN chmod +x /app/pocketbase /app/start.sh

EXPOSE 10000

CMD ["./start.sh"]
