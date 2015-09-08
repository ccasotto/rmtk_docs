pdflatex -interaction=nonstopmode rmtk-docs.tex &> log.md
bibtex rmtk-docs > log.md
pdflatex -interaction=nonstopmode rmtk-docs.tex &> log.md
pdflatex -interaction=nonstopmode rmtk-docs.tex &> log.md
makeindex rmtk-docs.idx -s configuration/StyleInd.ist &> log.md
makeglossaries rmtk-docs &> log.md
pdflatex -interaction=nonstopmode rmtk-docs.tex &> log.md
cat log.md | egrep "Error|Warning"
./clean.sh
open rmtk-docs.pdf