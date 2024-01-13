all: ../full.pdf ../full.epub

../full.pdf: $(wildcard ../inf/*.tex ../inf/chapters/*.tex ../math/*.tex ../math/chapters/*.tex ../common/*.tex *.tex)
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make full.tex
	-mv ./full.pdf ../


../full.epub: ../full.pdf
	mk4ht htlatex full.tex 'xhtml,charset=utf-8,pmathml,pic-m,pic-equation,svg' ' -cunihtf -utf8 -cvalidate'
	ebook-convert full.html ../full.epub  --language bg --no-default-epub-cover


clean:
	latexmk -CA
