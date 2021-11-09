pandoc -Vtheme=Berlin $1.md -V urlcolor=blue -V linkcolor=white -M latex.yaml -t beamer --slide-level=2 -o ${1}_berlin.pdf
pandoc -Vtheme=Warsaw --toc -Vtoc-title:"Contenido" -M latex.yaml $1.md -t beamer --slide-level=1 -o ${1}_warsaw.pdf
pandoc $1.md --mathjax -t revealjs -s -V theme:beige -o $1.html
pandoc $1.md -Vgeometry:margin=3cm --toc -Vtoc-title:"Contenido" -Vinclude-after='`\newpage{}`' -o ${1}_doc.pdf
pandoc $1.md --epub-cover-image=pandoc_cartel.png --toc --toc-depth=1 -o $1.epub
cd pandoc-bootstrap
bash compila.sh
