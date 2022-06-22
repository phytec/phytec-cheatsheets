How to read permissions
=======================

to read permissions of a file or a directory you can use ``ls -l <path>``.
For Example the permissions of /bin/bash:

.. code-block:: bash

    host$ ls -l /bin/bash
    -rwxr-xr-x 1 root root 1183448 Jun 18  2020 /bin/bash

The interesting part here is "-rwxr-xr-x 1 root root". 
To understand it, you have to split it up:

+-------------------------------+----------------------------------+
| Character(s)                  | Description                      |
+===============================+==================================+
| 1                             | * -: file                        |
|                               | * d: directory                   |
|                               | * l: symbolic link               |
+-------------------------------+----------------------------------+
| 2-4                           | Owner permissions                |
+-------------------------------+----------------------------------+
| 5-7                           | Group permissions                |
+-------------------------------+----------------------------------+
| 8-10                          | Others permissions               |
+-------------------------------+----------------------------------+
| 14-18                         | Owner                            |
+-------------------------------+----------------------------------+
| 20-24                         | Group                            |
+-------------------------------+----------------------------------+

The characters for the permissions have the following meaning:

* r: read
* w: write
* x: execute