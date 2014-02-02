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

To install the current version packaged in this repo, run:

``` sh
$ chmod a+x *.sh
$ ./install-sublime.sh
```

You will probably have to be root to install (unless you want to install to another directory, in which case you can just edit the shell script):

``` sh
$ su
```

To package your currently installed version (which probably contains some of your personal preferences and modifications), run:

``` sh
$ chmod a+x *.sh
$ ./get-sublime.sh
```

You may or may not have to be root to do this as well.

Final note
----------
If you choose to modify the *.sh files, and then it won't correctly create the *.desktop files correctly.  You'll have to manually edit them to have them point to the correct install directory.
