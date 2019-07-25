pwd=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))
source=$(pwd)/src
build=$(pwd)/build

all: hello

$(build):
	mkdir -p $(build)

hello: $(source)/hello.f90 $(build)
	cd $(build); \
	gfortran --coverage -fprofile-dir=$(build) -o $@ $<
