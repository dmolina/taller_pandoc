pandoc.html: pandoc.md
	pandoc pandoc.md --mathjax -t revealjs -s -V theme:beige -o pandoc.html

all: pandoc.html pandoc_berlin.pdf pandoc.pdf pandoc_warsaw.pdf

pandoc.epub: pandoc.md
	pandoc pandoc.md --epub-cover-image=pandoc_cartel.png --toc --toc-depth=1 -o pandoc.epub

pandoc_warsaw.pdf: pandoc.md
	pandoc -Vtheme=Warsaw --toc -Vtoc-title:"Contenido" -M latex.yaml pandoc.md -t beamer --slide-level=1 -o pandoc_warsaw.pdf

pandoc_berlin.pdf: pandoc.md
	pandoc -Vtheme=Berlin pandoc.md -V urlcolor=blue -V linkcolor=white -M latex.yaml -t beamer --slide-level=2 -o pandoc_berlin.pdf

pandoc.pdf: pandoc.md
	pandoc pandoc.md -Vgeometry:margin=3cm --toc -Vtoc-title:"Contenido" -o pandoc_doc.pdf

clean:
	bash clear.sh
