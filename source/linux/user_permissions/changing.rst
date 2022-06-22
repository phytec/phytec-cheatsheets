Changing permissions
====================

To change permissions the tool chmod is used.
Make sure, you are the owner of the file you want to change the permissions on or you're the superuser.
When changing permissions you enter the new permissions in a 3-digit format. 
The first digit for owner-, the second for group- and the last for others permissions. 
This is how the digit is calculated:

+---------------------+----------------+
| Permission          | toAdd          |
+---------------------+----------------+
| Read                | 4              |
+---------------------+----------------+
| Write               | 2              |
+---------------------+----------------+
| Execute             | 1              |
+---------------------+----------------+

chmod
^^^^^
    full name:
        **ch** ange **mod** e
    
    example:
        .. code-block:: bash
        
            chmod <permission> <path>
        
        changes the permissions of the file or directory to the specified mode.

chown
^^^^^
    full name:
        **ch** ange **own** er
    
    example:
        .. code-block:: bash
        
            chown -c <user> <path>
        
        changes the owner of the file or directory to the specified user.
