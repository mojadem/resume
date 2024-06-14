CWD = $(shell pwd)

run:
	podman run --rm -v "$(CWD)/out:/data/out" mojadem/resume:latest
	mv out/resume.pdf matt_dembiczak_resume.pdf
	mv out/resume.png resume.png

build:
	podman build -t mojadem/resume:latest .

clean:
	git clean -fx
