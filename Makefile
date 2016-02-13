name := $(shell grep '^name:' docker-id.yml | cut -d' ' -f2)
user := $(shell grep '^user:' docker-id.yml | cut -d' ' -f2)
base := $(shell basename $$PWD)
DID_NAME := $(user)/$(name)

build:
	did build

run: build
	did run $(DID_NAME)

id:
	docker run $(DID_NAME)

push:
	docker push $(DID_NAME)

doc: ReadMe.pod

ReadMe.pod: $(base).swim
	docker run -i dids/swim < $< > $@
	# Soon to be:
	#did run swim --to=pod --complete < $< > $@
