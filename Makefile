all:
	rm -rf xsede.bbl xsede.aux xsede.blg xsede.log
	latex xsede
	bibtex xsede
	latex xsede
	latex xsede
	dvips -t letter -o xsede.ps xsede.dvi
	ps2pdf14 -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true xsede.ps xsede.pdf
both: all code_perf
code_perf:
	rm -rf code_perf.bbl code_perf.aux code_perf.blg code_perf.log
	latex code_perf
#	bibtex code_perf
	latex code_perf
#	latex code_perf
	dvips -t letter -o code_perf.ps code_perf.dvi
	ps2pdf14 -dMaxSubsetPct=100 -dCompatibilityLevel=1.2 -dSubsetFonts=true -dEmbedAllFonts=true code_perf.ps code_perf.pdf
clean: 
	rm -rf xsede.bbl xsede.aux xsede.blg xsede.log
	rm -rf code_perf.bbl code_perf.aux code_perf.blg code_perf.log
	rm -rf *~
	rm -rf #*#
	rm -f *.dvi *.ps *.pdf	*.aux *.log *.blg *.bbl


