Groups
======

In Linux you can create permission groups. You can assign users to groups, so the users can 
use the groups permissions. For Example, if a user wants acces to a serial port, you can 
add the user to the dialout group. All users in this group can use the serial port.

Through groups you can also gain acces to various system resources. A normal user for example 
can't shutdown the sytem, install packages or start and stop services.
When you add the user to the ``sudo`` group, it can use commands with superuser privileges.
With this privileges you can do everything on the system.
But warning: with great power comes great responsibility.

On Linux you also have the root user on nearly every distro. 
The root user is the superuser. It has all permissions on the system.


Group commands:

groups
^^^^^^
    Description
        lists all groups of the current user
    
    Usage
        .. code-block:: bash

            host$ groups

groupadd
^^^^^^^^
    Description
        adds a new group
    
    Usage
        .. code-block:: bash

            host$ groupadd <newGroup>

groupdel
^^^^^^^^
    Description
        deletes a group
    
    Usage
        .. code-block:: bash

            host$ groupdel <group>

groupmod
^^^^^^^^
    Description
        modifies a group
    
    Usage
        .. code-block:: bash

            host$ groupmod [options] <group>

usermod -a -G <group> <user>
^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    Description
        adds a user to a group
    
    Usage
        .. code-block:: bash

            host$ usermod -a -G <group> <user>
