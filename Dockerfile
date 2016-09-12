FROM golang:1.7-alpine


COPY . /go/src/github.com/cyverse-de/copy

CMD ["go", "test", "github.com/cyverse-de/copy"]
