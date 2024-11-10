FROM golang:alpine3.19
ADD . /go/src/app
WORKDIR /go/src/app
RUN  go build -v -o /go/src/app/jenkins-app
CMD ["./jenkins-app"]
