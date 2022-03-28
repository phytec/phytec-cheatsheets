Connection to other computers
=============================

ssh
^^^
    Description:
        Starts a **s** ecure **s** hell sessions with the given host and user.
        When the connection is established, you are working on the remote system.

    Usage:
        .. code-block:: bash

            host$ ssh [user@]remote_host

    Example:
        .. code-block:: bash

            host$ ssh user@192.168.3.11

scp
^^^
    Description:
        With **s** ecure **c** o **p** y you can exchange files from your computer with a remote host.
        SCP works over ssh.	

    Usage:
        .. code-block:: bash

            host$ scp [<user>@<source_host>:]<source> [<user>@<destination_host>:]<destination>

    Example:

        downloading from remote:
            .. code-block:: bash

                host$ scp user@192.168.3.11:~/doc.txt .


        uploading to remote:
            .. code-block:: bash

                host$ scp ./firmware.hex user@192.168.3.11:~/

sftp
^^^^
    Description:
        With **s** ecure **ftp** you can exchange files from your computer with a remote host.
        SFTP works over ssh. (Sftp is not supported in default configuration of PHYTEC BSPs.)
    
    Usage:
        .. code-block:: bash
                
                host$ sftp [user@]remote_host
    
    Example:
        .. code-block:: bash
                
                host$ sftp user@192.168.3.11