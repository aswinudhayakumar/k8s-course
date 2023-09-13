run:
	go run main.go

dep:
	go mod tidy
	go mod vendor

build:
	docker build -t k8scourse:v1 .

run-build:
	docker run -d -p 3000:3000 --name webserver k8scourse:v1