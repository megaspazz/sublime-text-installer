sublime-text-installer
======================

Summary
-------

Easy way to install Sublime Text 2 &amp; 3, and also to make backups of your own configs and settings to move to another computer.

Note
----

I do not own any part of Sublime Text.  The versions of Sublime Text 2 &amp; 3 used in this repo were downloaded for free on Feb. 1, 2014 from [the Sublime Text homepage](http://www.sublimetext.com/).

I have made a few small changes to the configurations, so this version is NOT a vanilla copy of Sublime Text.  I probably changed some of the default indentations (tabs, spaces, etc.) but I can't remember exactly what.  That's OK though, since it's really easy to change.  One of the [what I believe to be major] changes I made was fixing the default indentation the "Toggle Comment" command.  That is to say, I fixed [this guy's problem](http://stackoverflow.com/questions/21118090/how-to-remove-the-space-from-the-comments-in-sublime-text-2) on a global level.  The changes I made are well-documented in comment.py somewhere in the Sublime Text packages, but I won't go into the details.  It's quite subtle, so many of you probably won't even notice.  Also, as mentioned in the [final notes below](#final-notes), it might start by attempting to open some files that don't exist, and if that happens, just close the initial window with files that it can't find and open a new window.


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

When you're getting the currently installed version, it will copy over everything, including the list of files that were open.  This means that after you install on another computer, Sublime Text will try to open those files again, which probalby don't exist.  This isn't really a problem, though, since you can just close those now-empty files and start again (you can press [Ctrl + Shift + N] to open an untainted window to use).
