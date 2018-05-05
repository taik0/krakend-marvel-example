KRAKENDCE_REPO=https://github.com/devopsfaith/krakend-ce
API2HTML_REPO=https://github.com/taik0/api2html
IMPORT_FILE=marvel.go

build_krakend:
		git clone ${KRAKENDCE_REPO}
		cp ${IMPORT_FILE} krakend-ce/
		cd krakend-ce && make docker_build_alpine && VERSION=custom make -e krakend_docker

build_api2html:
		git clone ${API2HTML_REPO}
		cd api2html && make docker

clean:
		rm -rf krakend-ce
		rm -rf api2html
