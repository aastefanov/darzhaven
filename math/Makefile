all: ../math.pdf ../math.epub

../math.pdf: $(wildcard *.tex chapters/*.tex ../common/*.tex)
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make math.tex
	-mv ./math.pdf ../

../math.epub: ../math.pdf
	mk4ht htlatex math.tex 'xhtml,charset=utf-8,pmathml' ' -cunihtf -utf8 -cvalidate'
	ebook-convert math.html ../math.epub  --language bg --no-default-epub-cover

clean:
	latexmk -CA
