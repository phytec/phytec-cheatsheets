Compressing and decompressing data streams of programs 
======================================================

Through Linux' pipes it is possible to directly compress the data stream of a programs output.
Here is a little example, where a whole disk is read and packed in an archive as a backup:

.. code-block:: bash

    host$ dd if=/dev/mmcblk0 bs=1M | bzip2 -c > backup_mmc.bz2

And to revert the backup:

.. code-block:: bash

    host$ bzip2 -dc < backup_mmc.bz2 | dd of=/dev/mmcblk0 bs=1M

