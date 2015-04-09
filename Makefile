.PHONY: all generate build info gen-latest $(GEN_VSNS) $(BLD_VSNS)

VERSIONS := 18.0-rc1 \
			17.5 \
			17.3 \
			17.3.2-slim \
			17.1 \
			17.1-slim
LATEST   := $(firstword $(VERSIONS))

GEN_VSNS := $(patsubst %,gen-%,$(VERSIONS))
BLD_VSNS := $(patsubst %,bld-%,$(VERSIONS))

all: generate build

generate: $(GEN_VSNS) gen-latest

gen-latest:
	rm -rf latest
	ln -s $(LATEST) latest

gen-%:
	mkdir -p $*
	cp docker-entrypoint.sh $*
	mustache vars/$*.yml Dockerfile.template > $*/Dockerfile

build: $(BLD_VSNS) bld-latest

bld-%:
	cd $* && docker build -t erlang/$* .

info:
	@echo "VERSIONS = $(VERSIONS)"
	@echo "LATEST   = $(LATEST)"
	@echo "GEN_VSNS = $(GEN_VSNS)"
	@echo "BLD_VSNS = $(BLD_VSNS)"
