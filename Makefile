CWD = $(shell pwd)

run:
	podman run --rm -v "$(CWD):/data" mojadem/resume:latest
	mv out/resume.pdf matt_dembiczak_resume.pdf

build:
	podman build -t mojadem/resume:latest .

clean:
	git clean -fx
