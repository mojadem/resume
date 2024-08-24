CWD = $(shell pwd)

run:
	podman run --rm -v "$(CWD):/data" mojadem/resume:latest
	mv out/resume.pdf matt_dembiczak_resume.pdf

container:
	podman build -t mojadem/resume:latest build

clean:
	git clean -fx
