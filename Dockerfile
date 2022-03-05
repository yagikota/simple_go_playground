FROM golang:latest

RUN mkdir /go/src/app

WORKDIR /go/src/app

ADD ./app /go/src/app/

RUN go install github.com/cosmtrek/air@latest

# CMD ["go", "run", "main.go"]
CMD ["air", "-c", ".air.toml"]
