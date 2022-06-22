Pipes
=====

From Program to Program
^^^^^^^^^^^^^^^^^^^^^^^
    In Linux most of the programs you can find use standard interfaces to output and input data. 
    The standard interfaces for this are the **standard output (stdout)** and the **standard input (stdin)** . 
    Because of this standardized interface a you can easily reroute a program's output to another program's input (and if you want this output to another program and so on..). 
    This rerouting is called a pipe. 
    Normally the stdout of a program is directly printed out on the shell and the stdin is the input from the Shell. 
    To connect the data streams of two programs the '|' character is used. For Example:

    .. code-block:: bash

        host$ readProgram | writeProgram

    This will connect the stdout of the readProgram to the stdin of the writeProgram.
    The stdout of the writeProgram will be printed out on the shell.


From Program to Files
^^^^^^^^^^^^^^^^^^^^^^

    The output of a program can even redirected into a File.
    This is done with the ">>" or the ">" operator.

    The >> operator appends a file with the output.
    The > operator replaces the file with the output. Example:

    .. code-block:: bash

        host$ sudo dmesg >> dmesg.log

    The output of dmesg will be appended to the file dmesg.log.