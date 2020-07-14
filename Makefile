all:
	rm -rf xsede.bbl xsede.aux xsede.blg xsede.log
	latex xsede
	bibtex xsede
	latex xsede
	latex xsede
	dvips -t letter -o xsede.ps xsede.dvi
	ps2pdf14 -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true xsede.ps xsede.pdf
clean: 
	rm -rf xsede.bbl xsede.aux xsede.blg xsede.log
	rm -rf *~
	rm -rf #*#
	rm -f *.dvi *.ps *.pdf	*.aux *.log *.blg *.bbl


