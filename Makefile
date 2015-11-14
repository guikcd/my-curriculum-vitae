cv.dvi: cv.tex
	latex cv.tex

cv.ps: cv.dvi
	dvips -t a4 -Ppdf cv.dvi

cv.pdf: cv.ps
	ps2pdf cv.ps

PDF: cv.pdf
	evince cv.pdf

clean:
	rm --force *.ps *.dvi *.pdf
