sublime-text-installer
======================

Summary
-------

Easy way to install Sublime Text 2 &amp; 3, and also to make backups of your own configs and settings to move to another computer.

Note
----

I do not own any part of Sublime Text.  The versions of Sublime Text 2 &amp; 3 used in this repo were downloaded for free on Feb. 1, 2014 from <a href="http://www.sublimetext.com/">the Sublime Text homepage</a>.


Usage
-----

To install the current version packaged in this repo, run the following (you will have to put in your root password when it prompts you for it):

``` sh
$ chmod a+x *.sh
$ sudo ./install-sublime.sh
```

To package your currently installed version (which probably contains some of your personal preferences and modifications), run:

``` sh
$ chmod a+x *.sh
$ ./get-sublime.sh
```

Mske sure that you aren't 'root' when doing this.  Also don't 'sudo' this command, either.

Final note
----------

If you choose to modify the *.sh files, and then it won't correctly create the *.desktop files correctly.  You'll have to manually edit them to have them point to the correct install directory.
