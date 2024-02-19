# Builder stage
FROM golang AS builder

# Set the working directory in the container
WORKDIR app

# Copy the local package files to the container's workspace
COPY . .

# Build the Go application
RUN go build -o /api


EXPOSE 8080

# Command to run the application
CMD ["/api"]
