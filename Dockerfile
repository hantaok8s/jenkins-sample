FROM golang:1.19-alpine
WORKDIR /go/src/app
COPY . .
RUN go mod init jenkins-app
RUN go mod tidy
RUN go build -v -o /go/src/app/jenkins-app
CMD ["/go/src/app/jenkins-app"]

