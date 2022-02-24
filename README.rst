PHYTEC Cheat Sheets
===================

.. inclusion-marker-do-not-remove

Purpose of these Cheat Sheets
#############################

This is a collection of cheat sheets for working with PHYTEC products.
You can find the latest PDF Builds of the cheat sheets on our
`GitHub Releases page`_. Please note that the releases which are marked 
with the "Pre-Release"-Tag are still under development and can contain 
mistakes or typos. If you note anything, feel free to `open a issue`_ or
:ref:`Start coding<contribute to this repository>`.

.. _GitHub Releases page: https://github.com/phytec/phytec-cheatsheets/releases
.. _open a issue: https://github.com/phytec/phytec-cheatsheets/issues

Installation
############

- The packet virtualenv must be installed in your distribution::

        apt install virtualenv

- Clone the repository locally::

        git clone git@github.com:phytec/phytec-cheatsheets.git
        cd doc-bsp-dev-log-imx8

- Create a virtualenv::

        virtualenv -p python3 venv
        . venv/bin/activate

- Install all dependencies::

        pip install -r requirements.txt

You can leave the virtualenv by running ``deactivate`` in the bash. Do not
forget to source the virtualenv next time you want to use doc-bsp-dev-log-imx8
in a new shell session::

        source venv/bin/activate


Discussion and Submitting patches
*********************************

- This framework should be a platform for discussion and continuous
  improvement.
- You can push a branch and open a pull-request for a change.
- Add a signed-off-by to your commits. Use ``git commit -s ...`` when commiting
  changes.

Start coding
------------

-   Create a branch to identify the issue you would like to work on. We're only
    working on main with tags. Therefore, branch off of the "main" branch::

        git checkout -b WIP/your-github-name/your-branch-name origin/main

- Using your favorite editor, make your changes, `committing as you go`_.
- Push your commits to GitHub and `create a pull request`_ by using::

        git push --set-upstream origin WIP/your-github-name/your-branch-name

.. _committing as you go: https://dont-be-afraid-to-commit.readthedocs.io/en/latest/git/commandlinegit.html#commit-your-changes
.. _create a pull request: https://help.github.com/en/articles/creating-a-pull-request

Build the Documentation
#######################

Build the separate cheatsheets:

.. code-block:: text
   make pdf

Build the whole documentation and generate a single PDF document.

.. code-block:: text

   make pdf_full

- On Ubuntu 20.04 you need to install some latex packages, e.g.::

        apt install texlive texlive-latex-extra latexmk

Build the documentation and generate html format.

.. code-block:: text

   make html

- On Ubuntu 20.04 you might need to expand the PATH in the enviroment::

        PATH=$PATH:~/.local/bin

Open ``docs/build/html/index.html`` in your browser to view the docs.

.. code-block:: text

   firefox build/html/index.html

Read more about `Sphinx <https://www.sphinx-doc.org/en/master/>`_.
