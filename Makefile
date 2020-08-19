

.PHONY: all
all:
	kubectl krew install ctx
	kubectl krew install ns



.PHONY: go
go:
	wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
	tar -C /usr/local -xzf go1.14.4.linux-amd64.tar.gz
	rm -f go1.14.4.linux-amd64.tar.gz

.PHONY: dev
dev:

	git clone https://github.com/go-delve/delve.git 
	cd delve
	make install



.PHONY: kubens
kubens:
	kubectl krew install ctx
	kubectl krew install ns


.PHONY: gitKind
gitKind:
	git clone https://github.com/mchirico/kind.git



.PHONY: kind
kind:
	GO111MODULE="on" go get sigs.k8s.io/kind@v0.8.1


.PHONY: kubernetes
kubernetes:
	curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
	chmod +x ./kubectl
	mv ./kubectl /usr/local/bin/kubectl




