# Makefile for Phytec Cheat Sheet generation

# You can set these variables from the command line, and also
# from the environment for the first four.

SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SPHINXPROJECT ?= phytec-cheatsheets
RST2PDFBUILD  ?= rst2pdf
RST2PDFOPTS   ?=
SOURCEDIR     = source
BUILDDIR      = build
CHEATSHEETS   = cheatsheet_uboot.pdf cheatsheet_linux.pdf cheatsheet_yocto.pdf

# Build all cheat sheets as separate pdf 
pdf: $(CHEATSHEETS)

%.pdf: $(SOURCEDIR)/%.rst | $(BUILDDIR)
	$(RST2PDFBUILD) $(RST2PDFOPTS) $+ -o $(BUILDDIR)/$@

# Build all cheatsheets a single pdf
pdf_full: | $(BUILDDIR) 
	$(SPHINXBUILD) -M latexpdf "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS)
	cp $(BUILDDIR)/latex/$(SPHINXPROJECT).pdf $(BUILDDIR)/$(SPHINXPROJECT)_full.pdf

# Create full HTML version of the cheat sheets
html: | $(BUILDDIR)
	$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) 

# Create build directory
$(BUILDDIR):
	mkdir -p $(BUILDDIR)
	

clean:
	rm -rf $(BUILDDIR)

.PHONY: clean
