.PHONY: gen-user-service

PROTOC = protoc -I proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/ --go-grpc_opt=paths=source_relative

gen-user-service:
	$(PROTOC) proto/user-service/*.proto
