Filesystem
==========

The Linux filesystem is build like every other filesystem (e.g. Windows or macOS).
It's build out of folders, that can contain subfolders, files or links to other files.
A Linux path can look like this: "/home/user/documents". 
When using a command line, the command line is running in a folder, the working directory.
You can make changes on the working directory, files or folders with this commands: 

.. admonition:: Linux Filesystem Specials

	Note, that Linux has special paths, that are very important for the use of the file system:

	* **/** is the **root directory**. In Linux **everything is represented as a file or a folder in the rootfs.** (e.g. every device can be found represented as a file in the /dev directory or programs usually in the /bin directory)
	* **.** is a link, that exists in every directory. **It points to the directory, that it is in**.
	* **..** is a link, that exists in every directory. **It points to the parent directory of the directory it is in**. (e.g. /home/user/.. points to /home)
	* **~** is everywhere useable. **It points to the home directory of the current user**


	Note, that a path can be an absolute or relative. An absolute path starts always with the root file system (e.g. /home/user/documents).
	A relative path is relative to the working directory and can even be only a file name (e.g. documents, ../../home)


.. hint::
	Note, that the notation for command arguments is as follows:

	- arguments enclosed with <> are placeholders for required arguments.
	- arguments enclosed with [] are placeholders for optional arguments.

cd [path]
^^^^^^^^^
	Full Name:
		**C** hange **D** irectory

	Description:
		Changes current working directory

	Example Usage:
		.. code-block:: bash

			host$ cd /var/lib

		changes working directory to the lib folder that is in the var
		folder which is in the root directory

		.. code-block:: bash

			host$ cd ./documents

		changes working directory to the documents folder, that is in the current working directory

pwd
^^^
	Full Name:
		**P** rint **W** orking **D** irectory

	Description:
		Outputs the path to the current working directory
	Example Usage:
		.. code-block:: bash

			host$ pwd

ls [path]
^^^^^^^^^
	Full Name:
		**L** i **s** t directory

	Description:
		Lists the files and folders in the working directory or in the given path
	Example Usage:
		.. code-block:: bash

			host$ ls documents/projects
		
		lists the contents of the project folder, thats in the documents folder which is in the working directory

mkdir <path>
^^^^^^^^^^^^
	Full Name:  
		**M** ma **k** e **Dir** ectory

	Description:
		Creates a Directory
	Example Usage:
		.. code-block:: bash

			host$ mkdir documents/projects/newProject

		creates the "newProject" directory in the ./documents/projects folder

touch <path>
^^^^^^^^^^^^
	Description:
		Creates a file
	Example Usage:
		.. code-block:: bash

			host$ touch newFile

		creates the file "newFile" in the working directory

mv <oldPath> <newPath>
^^^^^^^^^^^^^^^^^^^^^^
	Full Name:  
		**M** o **v** e

	Description:
		Moves files or folders. It is also used to rename files or folders.
	Example Usage:
		.. code-block:: bash

			host$ mv flash.bin output/flash.bin
		
		moves the file "flash.bin" from the working directory to the output folder

rm <path>
^^^^^^^^^
	Full Name:
		**R** e **m** ove

	Description:
		Removes files or folders
	Example Usage:
		.. code-block:: bash

			host$ rm flash.bin
			or to remove a directory:
			host$ rm -r ./output

ln -s <path> <linkPath>
^^^^^^^^^^^^^^^^^^^^^^^
	Full Name:  
		**L** i **n** k

	Description:
		Links files or folders
	Example Usage:
		.. code-block:: bash

			host$ ln -s flash.bin flash_link.bin

		Creates a link flash_link.bin that points to flash.bin. (You can compare it with a Windows shortcut)

cp <sourcePath> <destinationPath>
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
	Full Name:  
		**c** o **p** y

	Description:
		Copies files or folders
	Example Usage:
		copying a single file:

		.. code-block:: bash

			host$ cp flash.bin flash_copy.bin
		

		copying a directory:

		.. code-block:: bash

			host$ cp -r ./output ./output_copy

cat <path>
^^^^^^^^^^
	Full Name:  
		Con **cat** enate

	Description:
		Prints the contents of a file to the console
	Example Usage:
		.. code-block:: bash

			host$ cat requires.txt

find <path> -name "<filename>"
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
	Description:
		Searches a file in the given path, including all subdirectories
	Example Usage:
		.. code-block:: bash

			host$ find . -name "flash.bin"

		Searches the file "flash.bin" in the working directory
		
dd [if=<sourcePath>] [of=<destinationPath>] [OPTIONS]
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
	Full Name:
		**d** isk **d** ump

	Description:
		This tool can directly write data to a disk / to a file. Can be used to 
		write images to sdcards.
	Example Usage:
		.. code-block:: bash

			host$ dd if=~/flash.bin of=/dev/mmcblk0 bs=1M status=progress
		
		directly writes flash.bin to the device mmcblk0


