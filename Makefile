BIN=arclog-bin

.PHONY: all build run clean test

all: build run clean

build: 
	@echo "--> mod tidy" && go mod tidy
	@echo "--> Building..." && GOARCH=amd64 GOOS=darwin go build -o $BIN github.com/hankpeeples/arclog

run: 
	@echo "--> Running" && ./$BIN

clean: 
	@echo "--> Cleaning" && go clean
	@rm $BIN

