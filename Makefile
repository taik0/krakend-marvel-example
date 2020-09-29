KRAKENDCE_REPO=https://github.com/devopsfaith/krakend-ce
API2HTML_REPO=https://github.com/devopsfaith/api2html
IMPORT_FILE=marvel.go

all: build_krakend build_api2html clean

build_krakend:
		git clone ${KRAKENDCE_REPO}
		cp ${IMPORT_FILE} krakend-ce/
		cd krakend-ce && make docker_build && VERSION=custom make -e krakend_docker

build_api2html:
		git clone ${API2HTML_REPO}
		cd api2html && make docker_deps && make docker

clean:
		rm -rf krakend-ce
		rm -rf api2html
