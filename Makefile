.PHONY: check fmt-check vet test build lint

# Match the Go checks workflow with Go 1.27.1 and golangci-lint 2.14.0.
check: fmt-check vet test build lint

fmt-check:
	@test -z "$$(gofmt -l $$(git ls-files '*.go'))"

vet:
	go vet ./...

test:
	go test -race ./...

build:
	go build ./...

lint:
	golangci-lint run
