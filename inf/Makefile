all: ../inf.pdf

../inf.pdf: $(wildcard *.tex chapters/*.tex ../common/*.tex)
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make inf.tex
	-mv ./inf.pdf ../


../inf.epub: ../inf.pdf
	mk4ht htlatex inf.tex 'xhtml,charset=utf-8,pmathml,pic-m,pic-equation,svg' ' -cunihtf -utf8 -cvalidate'
	ebook-convert inf.html ../inf.epub  --language bg --no-default-epub-cover


clean:
	latexmk -CA
