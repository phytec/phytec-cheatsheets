Other basic tools
=================

man <section>
^^^^^^^^^^^^^
    Full Name
        **Man** ual Pager
    
    Description
        man is the systems manual pager. 
        It is an interface to all manuals, that come with installed software.
        This not only includes tools and commands but also usage of libraries. 
        If you want to know more about a command or a tool, 
        the man pages are a good source of information.
    
    Example Usage
        .. code-block:: bash

            host$ man gcc
            
        shows the man page for gcc

htop
^^^^
    Full Name
        **H** isham **T** able **o** f **P** rocesses

    Description
        Lists all active Processes with their needed resources in a table.
        It has functions to kill Processes or to filter the list.

    Example Usage
        .. code-block:: bash

            host$ htop
        
minicom -b <baudrate> -P <port>
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    Description
        Tool to use serial ports

    Example Usage
        .. code-block:: bash

            host$ minicom -b 115200 -P /dev/ttyUSB0

dmesg
^^^^^^
    Full Name
        **D** iagnostik  **Me** ssaa **g** es

    Description
        Shows all messages that have been logged by the kernel.

    Example Usage
        .. code-block:: bash

            host$ dmesg