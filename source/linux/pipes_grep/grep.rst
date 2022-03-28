Grep
====

Grep is an important tool that is widely used to filter or search in program outputs. 
For example searching a specific line in the output from mount:

.. code-block:: bash

    host$ mount | grep "sda"


will print all the mounting points that contain the "sda" in the output.