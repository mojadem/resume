FROM ubuntu

RUN apt-get update -q && apt-get install -qy \
	texlive-latex-base \
	texlive-latex-extra \
	texlive-fonts-recommended \
	texlive-fonts-extra \
	imagemagick

WORKDIR /data

COPY resume.tex .
COPY compile.sh .
RUN chmod +x compile.sh

CMD ./compile.sh
