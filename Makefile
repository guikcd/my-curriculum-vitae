cv.dvi: cv.tex
	latex cv.tex

cv.ps: cv.dvi
	dvips -t a4 -Ppdf cv.dvi

cv.pdf: cv.ps
	ps2pdf cv.ps

PDF: cv.pdf
	evince cv.pdf

cv-en.dvi: cv-en.tex
	latex cv-en.tex

cv-en.ps: cv-en.dvi
	dvips -t a4 -Ppdf cv-en.dvi

cv-en.pdf: cv-en.ps
	ps2pdf cv-en.ps

PDF-en: cv-en.pdf
	evince cv-en.pdf

clean:
	rm --force *.ps *.dvi *.pdf *.out *.log *.aux *.synctex.gz
