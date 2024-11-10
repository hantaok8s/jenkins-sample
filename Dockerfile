FROM golang:alpine3.20
WORKDIR /go/src/app
COPY . .
RUN go mod init jenkins-app
RUN go mod tidy
RUN go build -v -o /go/src/app/jenkins-app
CMD ["/go/src/app/jenkins-app"]

