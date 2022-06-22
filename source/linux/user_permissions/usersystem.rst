User system basics
================

Linux has a multiuser user system which allows multiple users to work on one
system at the same time. The following commands will give you a basic overview.

.. warning::
    This chapter describes commands for user management of mainstream Linux distributions,
    but Yocto Based BSPs have a different approach for that. If you want to know
    more about user management in Yocto based BSPs, please read the
    `Yocto Reference Manual <https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html>`_


usermod
^^^^^^^
    full name:
        **user** **mod** ification
    
    example:
        .. code-block:: bash
        
            usermod -a -G <group> <user>

        adds the user to the specified group.
    
adduser
^^^^^^^
    example:
        .. code-block:: bash
        
            adduser <newUser>

        adds a user with the given username	


passwd [username]
^^^^^^^^^^^^^^^^^
    Full Name
        **Passw** or **d**
        
    Description
        Changes a users password	

    Example Usage
        change the password of another user:

        .. code-block:: bash

            host$ passwd demouser


        change the password of the current user:

        .. code-block:: bash

            host$ passwd

.. _sudo:

sudo <command>
^^^^^^^^^^^^^^
    Full Name
        **Su** peruser **Do**

    Description
        Executes a Command with superuser privileges.
        **Warning:** only execute a command with superuser privileges, if you know exactly what you are doing!

        Sometimes you will notice, that you cannot execute a command, because you does not have all permissions. 
        If you execute it with sudo, you should have all needed permissions. (e.g. passwd has to be run with sudo)
	
    Example Usage
        .. code-block:: bash

            host$ sudo apt install gcc

whoami
^^^^^^
    Description
        Outputs the username of the current user	

    Example Usage
        .. code-block:: bash

            host$ whoami

su [username]
^^^^^^^^^^^^^
    Full Name
        **S** witch **U** ser

    Description
        Switches to a given user. If no username was provided, you will switch to root.
        **Warning:** you should only execute commands as superuser, if you know exactly what you are doing!
	
    Example Usage
        .. code-block:: bash

            host$ su demouser