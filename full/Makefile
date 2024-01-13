.PHONY: full

all: ../full.pdf ../full.epub

../full.pdf:
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make full.tex
	-mv ./full.pdf ../


../full.epub: ../full.pdf
	mk4ht htlatex full.tex 'xhtml,charset=utf-8,pfullml' ' -cunihtf -utf8 -cvalidate'
	ebook-convert full.html ../full.epub  --language bg --no-default-epub-cover


clean:
	latexmk -CA
