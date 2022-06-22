Chaning network config
======================

ping
^^^^
    Description:
        This command is used to send ICMP echo requests to a host.
        You can use it to check if a connection is working.

    Usage:
        ping [options] [host]

    Example:
        .. code-block:: bash

            host$ ping <address>

ip
^^
    Description:
        This command is used to show the current network configuration.

    Usage:
        ip [options] [address]
    
    Example:
        .. code-block:: bash

            host$ ip addr
        
        shows the current network configuration.

        .. code-block:: bash

            host$ ip addr add <address>/<netmask> dev <adapter>

        Adds a new address to a specific network adapter

        .. code-block:: bash

            host$ ip addr del <address>/<netmask> dev <adapter>

        Deletes an address from a specific network adapter

        .. code-block:: bash

            host$ ip link set <adapter> up

        Enables the network adapter

        .. code-block:: bash

            host$ ip link set <adapter> down

        Disables the network adapter
