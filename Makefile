EXT= .log .toc .acn .lol .ist .acr .alg .aux .bbl .bcf .blg .glg .glo .gls .lof .lot .out .synctex.gz .run.xml "(busy)" .pyg .pygstyle .pygtex .dvi SAVE-ERROR .fls .fdb_latexmk cite.txt

make:
		latexmk -shell-escape -synctex=1 -interaction=nonstopmode -file-line-error -pdf main

clean:
		for i in $(EXT); do \
			find . -name "*$$i" -delete; \
		done

