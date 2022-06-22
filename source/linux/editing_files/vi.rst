.. _vi:

Vi
==

Vi is an advanced but widely used editor.
It has a lot of functions (therefore often a little bit confusing for beginners)
and it can be personalized easily.
This is only a basic overview. 
The most Linux distros bring a small vim command line tutorial to learn the
basics in 20-30 minutes:

.. code-block:: bash

    host$ vimtutor

Before using it, you have to understand the basic working principle of Vi.
Vi has three operational modes, the COMMAND mode, the INSERT mode and the VISUAL mode.
By opeing a file like this: 

.. code-block:: bash

    host$ vi document.txt

you will see the contents of the file in COMMAND mode. 
In this mode you can use Vi commands like copying or searching phrases (more on that later), 
move the cursor and look at the files contents.
Outgoing from the COMMAND mode you can change the mode of Vi to another by pressing keys.
You have to press ESCAPE to exit a mode and get back to COMMAND mode.

+------------------+------------------+
| Mode             | Key              |
+==================+==================+
| INSERT           | i                |
+------------------+------------------+
| VISUAL           | v                |
+------------------+------------------+

INSERT mode
    In INSERT mode you can actively edit the text of the file you have loaded.
    You can use the cursor keys to navigate and edit as normal as you would in an office tool.

VISUAL mode
    In VISUAL mode you will directly highlight text from the position of your cursor.
    This can be used to copy or cut chunks of text that aren't easily to highlight in command mode. 
    After highlighting the text blocks you wanted to highlight 
    you can use the commands from command mode to work with it.

COMMAND mode
    In command mode you can give Vi direct commands and work with your file. 
    You simply have to type the command in, when you are in COMMAND mode. 
    Here are some important commands:

    +------------------+------------------+
    | Command          | Description      |
    +==================+==================+
    | :w               | Write the file   |
    +------------------+------------------+
    | :q               | Quit Vi          |
    +------------------+------------------+
    | :q!              | Force quit Vi    |
    +------------------+------------------+
    | :wq              | Write and quit   |
    +------------------+------------------+
    | dd               | Cut line         |
    +------------------+------------------+
    | <number> dd      | Cut x lines      |
    +------------------+------------------+
    | dw               | Cut word         |
    +------------------+------------------+
    | u                | Undo             |
    +------------------+------------------+
    | yy               | Copy line        |
    +------------------+------------------+
    | <number> yy      | Copy x lines     |
    +------------------+------------------+
    | yw               | Copy word        |
    +------------------+------------------+
    | p                | Paste            |
    +------------------+------------------+
    | <line> SHIFT-G   | Go to line       |
    +------------------+------------------+
    | gg               | Go to first line |
    +------------------+------------------+
    | G                | Go to last line  |
    +------------------+------------------+
    | /<phrase>        | Search for phrase|
    +------------------+------------------+