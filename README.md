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

### Preliminary

Make sure all of the files are runnable (maybe you don't have to do this):

``` sh
$ chmod a+x *.sh
```

### Install Sublime Text

To install the current version packaged in this repo, run the following:

``` sh
$ sudo ./install-sublime.sh
```

You may have to put in your root password.

### Get Sublime Text

To package your currently installed version (which probably contains some of your personal preferences and modifications), run:

``` sh
$ ./get-sublime.sh
```

Mske sure that you aren't 'root' when doing this.  Also don't 'sudo' this command, either.

### Uninstall Local Copy

To remove the current version of Sublime Text that this program uses to install, run:

``` sh
$ ./clean-sublime.sh
```

### Uninstall Sublime Text

To uninstall a version of Sublime Text that was installed using these scripts, run:

``` sh
$ sudo ./uninstall-sublime
```

You may have to put in your root password.

Final notes
-----------

If you choose to modify the *.sh files, and then it won't correctly create the *.desktop files correctly.  You'll have to manually edit them to have them point to the correct install directory.

By default, it will only copy and overwrite conflicting files, but will leave all other files.  To do a clean install, make sure you manually delete all of the old files before running the scripts.
