VER = 1.0.0
GX = granatumx/doc:$(VER)

docker:
	docker build -t $(GX) .

docker-push:
	docker push $(GX)

doc:
	./gendoc.sh
	mv README.go.md README.md
