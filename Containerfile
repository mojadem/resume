FROM ubuntu

RUN apt-get update -q && apt-get install -qy \
	texlive-latex-base \
	texlive-latex-extra \
	texlive-fonts-recommended \
	texlive-fonts-extra

WORKDIR /data

RUN mkdir out

CMD pdflatex -output-directory=out resume.tex
