FROM golang:1.20-alpine
ENV GO111MODULE=on
RUN mkdir src/app
WORKDIR /src/app
COPY . .
RUN go mod tidy
EXPOSE 8080
CMD go run cmd/app/main.go