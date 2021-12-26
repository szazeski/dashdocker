FROM golang:1.17

WORKDIR /go/src/github.com/szazeski/dashdocker
COPY go.mod ./

RUN go mod download

COPY . ./

RUN go install

CMD [ "dockerdash" ]