.PHONY: all local clean docker

SRC      := src/main.tex
OUTDIR   := build
PDF_OUT  := Muhammad_Argya_Vityasy_CV.pdf

all: docker

local: $(PDF_OUT)

$(PDF_OUT): $(SRC) src/settings.tex
	pdflatex -output-directory=$(OUTDIR) -jobname=$(basename $(PDF_OUT)) $(SRC)
	pdflatex -output-directory=$(OUTDIR) -jobname=$(basename $(PDF_OUT)) $(SRC)
	cp $(OUTDIR)/$(PDF_OUT) .

docker: $(SRC) src/settings.tex
	mkdir -p $(OUTDIR)
	docker run --rm -v "$(CURDIR):/workspace" -w /workspace texlive/texlive:latest \
		pdflatex -output-directory=$(OUTDIR) -jobname=$(basename $(PDF_OUT)) $(SRC)
	docker run --rm -v "$(CURDIR):/workspace" -w /workspace texlive/texlive:latest \
		pdflatex -output-directory=$(OUTDIR) -jobname=$(basename $(PDF_OUT)) $(SRC)
	cp $(OUTDIR)/$(PDF_OUT) .

clean:
	rm -rf $(OUTDIR) $(PDF_OUT)