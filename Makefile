IMAGE=mcandre/docker-solr:latest

export LOCALHOST=$$(docker-machine ip default)

ifneq ($(OS),Windows_NT)
	UNAME=$(shell uname -s)

	ifeq ($(UNAME),Linux)
		LOCALHOST=localhost
	endif
endif

all: run

build: Dockerfile
	docker build -t $(IMAGE) .

run: clean-containers build
	$(eval CONTAINER=$(shell docker run -d -p 8983:8983 $(IMAGE)))
	sleep 2
	docker exec $(CONTAINER) solr create -c books
	curl -s "http://$(LOCALHOST):8983/solr/books/update/?commit=true" -d @books.json -H 'Content-Type:application/json'
	curl "http://$(LOCALHOST):8983/solr/books/select?q=name:*Lucene*&wt=json"

clean-containers:
	-docker ps -a | grep -v IMAGE | awk '{ print $$1 }' | xargs docker rm -f

clean-images:
	-docker images | grep -v IMAGE | grep $(IMAGE) | awk '{ print $$3 }' | xargs docker rmi -f

clean-layers:
	-docker images | grep -v IMAGE | grep none | awk '{ print $$3 }' | xargs docker rmi -f

clean: clean-containers clean-images clean-layers

editorconfig:
	flcl . | xargs -n 100 editorconfig-cli check

dockerlint:
	$(shell npm bin)/dockerlint

lint: editorconfig dockerlint

publish:
	docker push $(IMAGE)
