DID_NAME := dids/pairup

run:
	@docker run \
	    -it \
	    --privileged \
	    -v $$PWD/docker:/docker \
	    -v $$PWD:/did \
	    -v ~/.git-hub:/root/.git-hub \
	    -v $$SSH_AUTH_SOCK:/ssh-agent \
	    -e SSH_AUTH_SOCK=/ssh-agent \
	    $(DID_NAME)

id:
	docker run $(DID_NAME)

build:
	docker build -t $(DID_NAME) .

push:
	docker push $(DID_NAME)

doc: ReadMe.pod

ReadMe.pod: doc/pairup-did.swim
	docker run -i dids/swim < $< > $@
	# Soon to be:
	#did run swim --to=pod --complete < $< > $@
