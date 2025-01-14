.PHONY: clean test

ecrm: go.* *.go cmd/ecrm/main.go
	go build -o $@ cmd/ecrm/main.go

clean:
	rm -f ecrm

test:
	go test -v ./...

install:
	go install github.com/fujiwara/ecrm/cmd/ecrm
