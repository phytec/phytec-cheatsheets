Installing and uninstalling software
====================================

Most Linux distributions come with a package manager like apt or yum.
It's made to simplify the process of downloading and installing new
software and its dependencies on a users' system.
The following sections only cover Debian based systems, since the
PHYTEC Development Environment, which ships with all PHYTEC kits,
uses a virtual machine (VM) with a Debian based Linux distribution.

.. note::
    If you want to install new software to your PHYTEC target board with a Yocto
    based BSP, you should read the
    `PHYTEC Yocto Reference Manual </https://www.phytec.de/cdocuments/?doc=UIHsG>`_.

apt install <packages>
^^^^^^^^^^^^^^^^^^^^^^
    Full Name
        **A** dvanced **P** ackaging **T** ool

    Description
        Installs a package with its dependencies.

        Has to be executed with super user privileges. See :ref:`sudo`

    Example Usage
        .. code-block:: bash

            host$ apt intall gcc
        
        installs the gcc package on the users system

apt remove <package>
^^^^^^^^^^^^^^^^^^^^
    Full Name
        **A** dvanced **P** ackaging **T** ool
    
    Description
        Removes a package but leaves every configuration files untouched

        Has to be executed with super user privileges. See :ref:`sudo`
    Example Usage
        .. code-block:: bash

            host$ apt remove gcc
        
        removes the gcc package from the users system

apt purge <package>
^^^^^^^^^^^^^^^^^^^
    Full Name
        **A** dvanced **P** ackaging **T** ool
    
    Description
        Removes a package with it's configuration files

        Has to be executed with super user privileges. See :ref:`sudo`


    Example Usage
        .. code-block:: bash

            host$ apt purge gcc
        
        removes the gcc package and configurations on the users system

dpkg -i <pathToPackage>
^^^^^^^^^^^^^^^^^^^^^^^
    Full Name
        **D** ebian **P** ac **k** a **g** e 

    Description
        Installs a .deb file on the users system.

        Has to be executed with super user privileges. See :ref:`sudo`
    
    Example Usage
        .. code-block:: bash

            host$ dpkg -i downloads/software.deb


