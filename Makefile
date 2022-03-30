# Makefile for Phytec Cheat Sheet generation

# You can set these variables from the command line, and also
# from the environment for the first four.

SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SPHINXPROJECT ?= phytec-cheatsheets
SOURCEDIR     = source
BUILDDIR      = build

# Build all cheat sheets as separate pdf files 
pdf: | $(BUILDDIR)
	$(SPHINXBUILD) -b pdf "$(SOURCEDIR)" "$(BUILDDIR)"

# Create full HTML version of the cheat sheets
html: | $(BUILDDIR)
	$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) 

# Create build directory
$(BUILDDIR):
	mkdir -p $(BUILDDIR)

clean:
	rm -rf $(BUILDDIR)

.PHONY: clean
