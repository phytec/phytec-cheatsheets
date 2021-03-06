# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
import os
import sys
# sys.path.insert(0, os.path.abspath('.'))


# -- Project information -----------------------------------------------------

project = 'phytec-cheatsheets'
copyright = '2022, Phytec i.MX8 Team'
author = 'Phytec i.MX8-Team'

# The full version, including alpha/beta/rc tags
release = '0.1'
version = '0.1'

# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = ['sphinx.ext.autodoc','rst2pdf.pdfbuilder']

# Add any paths that contain templates here, relative to this directory.
#  templates_path = ['_templates']

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
#  exclude_patterns = []


# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
html_theme = 'sphinx_rtd_theme'

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
# html_static_path = ['_static']


# -- Options for PDF output -------------------------------------------------
pdf_documents = [
    ('index', u'cheatsheets_full', u'PHYTEC Cheatsheets', u'Phytec i.MX8 Team', {}),
    ('cheatsheet_linux', u'cheatsheet_linux', u'PHYTEC Cheatsheet Linux', u'Phytec i.MX8 Team', {}),
    ('cheatsheet_uboot', u'cheatsheet_uboot', u'PHYTEC Cheatsheet Uboot', u'Phytec i.MX8 Team', {}),
    ('cheatsheet_yocto', u'cheatsheet_yocto', u'PHYTEC Cheatsheet Yocto', u'Phytec i.MX8 Team', {})]

pdf_toc_depth = 2
pdf_blank_first_page = False
