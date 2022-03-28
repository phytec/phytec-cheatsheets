Wildcards
=========

Wildcards are simple but powerful "tools". They are more the less autocomplete 
for paths or filenames.
You can use wildcards to simplify big tasks like removing all files that have a filename 
with a specific extension. 
Wildcard Characters:

\* (Asterisk)
^^^^^^^^^^^^^
    Description
        The Shell replaces the asterisk with everything, that is available.
        In the case of the example the shell would replace the \*.o with a list of all 
        files that fit the wildcard. 
        But only in the working directory. The asterisk does not include subdirectories.
    
    Usage
        For Example deleting all files with .o extension

        .. code-block:: bash

            $host rm \*.o

\**
^^^
    Description
        The Shell replaces the double asterisk with everything, that is available.
        In the case of the example the shell would replace the \**\*.o with a list of 
        all files and directories that fit the wildcard. 
        The double asterisk does include subdirectories.
    
    Usage
        For Example deleting all files with .o extension inlcuding the subdirectories

        .. code-block:: bash

            $host rm \**/\*.o


?
^
    Description
        The Shell replaces the question mark with only one character thats available.

    Usage
        For Example deleting all files with only a one character extension:

        .. code-block:: bash

            $host rm \*.?

[]
^^
    Description
        The square brackets are replaced with filenames, that fits the characters, thats inside. 
        You can use it like with regex.

    Usage
        For Example deleting all files with a .c or a .h extension

        .. code-block:: bash

            host$ rm \*.[ch]

