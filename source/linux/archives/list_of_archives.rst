List of archives
================

When using Linux you will find multiple types of archives. 
Here is a list how to unpack and pack widely used archive types with the fitting command:

.zip
^^^^
    unpack command:
        .. code-block:: bash

            host$ unzip archive.zip
    
    pack command:
        .. code-block:: bash

            host$ zip -r archive.zip <toArchive>

.tar
^^^^
    unpack command:
        .. code-block:: bash

            host$ tar -xvf archive.tar

        description:
            * **-x:** extract
            * **-f:** file
            * **-v:** verbose
    
    pack command:
        .. code-block:: bash

            host$ tar -cvf archive.tar <toArchive>

        description:
            * **-c:** create

.tar.gz
^^^^^^^
    unpack command:
        .. code-block:: bash

            host$ tar -xvzf archive.tar.gz

        description:
            * **-z:** gzip
    
    pack command:
        .. code-block:: bash

            host$ tar -cvzf archive.tar.gz <toArchive>

.tar.bz2
^^^^^^^^
    unpack command:
        .. code-block:: bash

            host$ tar -xvjf archive.tar.bz2

        description:
            * **-j:** bzip2
    
    pack command:
        .. code-block:: bash

            host$ tar -cvjf archive.tar.bz2 <toArchive>

.gz / .gzip
^^^^^^^^^^^
    unpack command:
        .. code-block:: bash

            host$ gunzip archive.gz

    pack command:
        .. code-block:: bash

            host$ gzip archive.gz

.bz2 / .bzip2
^^^^^^^^^^^^^
    unpack command:
        .. code-block:: bash

            host$ bunzip2 archive.bz2

    pack command:
        .. code-block:: bash

            host$ bzip2 archive.bz2
    
.7z
^^^
    unpack command:
        .. code-block:: bash

            host$ 7z x archive.7z

    pack command:
        .. code-block:: bash

            host$ 7z a archive.7z <toArchive>

.rar
^^^^
    unpack command:
        .. code-block:: bash

            host$ unrar e archive.rar

    pack command:
        .. code-block:: bash

            host$ rar a archive.rar <toArchive>