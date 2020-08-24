generate-artifacts:
	go build -o ./artifacts/hello-server -tags='$(GOTAGS)' ./pkg/hello-server
	cp ./systemd/hello-server.service ./artifacts
	cd ./artifacts && \
	tar -czvf hello-server.tgz hello-server hello-server.service && \
	rm hello-server hello-server.service

.PHONY: generate-artifacts
