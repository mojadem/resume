#! /usr/bin/bash

pdflatex -output-directory=out resume.tex
convert -density 300 out/resume.pdf -alpha off out/resume.png
