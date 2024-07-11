docker_build:
	docker build -t boutiques/example1:test ./boutiques/schema/examples/example1

docker2singularity:
	docker run -v /var/run/docker.sock:/var/run/docker.sock -v ${HOME}:/output --privileged -t --rm singularityware/docker2singularity boutiques/example1:test
	IMGNAME=$(ls $HOME/boutiques_example1_test*.simg)
	mv ${IMGNAME} ./boutiques-example1-test.simg
