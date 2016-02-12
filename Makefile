DID_NAME := dids/pairup

build:
	did build

run: build
	did run $(DID_NAME)

id:
	docker run $(DID_NAME)

push:
	docker push $(DID_NAME)

doc: ReadMe.pod

ReadMe.pod: doc/pairup-did.swim
	docker run -i dids/swim < $< > $@
	# Soon to be:
	#did run swim --to=pod --complete < $< > $@
