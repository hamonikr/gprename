   ___   ___  __
  / _ \ / _ \/__\ ___ ____   ____ ________   ___
 / /_\// /_)/ \/// _ \  _ \ / _  |  _   _ \ / _ \
/ /_\\/ ___/ _  \  __/ | | | (_| | | | | | |  __/
\____/\/   \/ \_/\___|_| |_|\__,_|_| |_| |_|\___|

 ***********************************************

GPRename is a complete batch renamer for files and directories.

Copyright (C) 2014 gprename-users@lists.sourceforge.net

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License or
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
file COPYING that came with this software for details.

Mailing list    - https://lists.sourceforge.net/lists/listinfo/gprename-users
Home Page       - http://gprename.sourceforge.net
Wikipedia       - http://en.wikipedia.org/wiki/GPRename


Requirements
---------------------------------------------------------------------------
 - perl:             http://www.perl.org
 - glib-perl:        http://search.cpan.org/~tsch
 - gtk2-perl:        http://search.cpan.org/~tsch
 - gnu-gettext:      http://www.gnu.org/software/gettext/gettext.html
 - perl-gettext:     http://search.cpan.org/~pvandry
 - libintl-perl:     http://search.cpan.org/~guido
 - nautilus-actions: http://www.grumz.net (optional)
---------------------------------------------------------------------------


Installation
---------------------------------------------------------------------------
GPRename is probably in your distribution's package manager, if it's not
follow these direction to easily install it :

Download: http://sourceforge.net/project/showfiles.php?group_id=40094

After downloading GPRename, open up a terminal and type these commands:
tar xvjf gprename-XXXXXXXX.tar.bz2
cd gprename
sudo make install

For Ubuntu or Debian, run this command in a terminal before you install it:
sudo apt-get install build-essential libintl-perl gettext nautilus-actions

Optional: If you're running Gnome and you're using Nautilus and you want
the contextual menu with the right-click button to show GPRename, then
install nautilus-actions, go into System/Preferences/Nautilus Actions 
Configuration, click Tools, Import Assistant..., Forward, select
gprename-nautilus-actions.xml, Foward, Forward, Apply, Close, click the
Record icon to save the changes and, finally, you might have to close
Nautilus and open it up to be able to show the changes. If it doesn't you
can always call 'nautilus -q' to force it to restart.

GPRename will now be installed and can be opened by calling 'gprename'
in a terminal or by selecting it in the Accessories menu in Gnome or with
the contextual menus in Nautilus if you've installed nautilus-actions.

To run GPRename in another language, you need to open the application
like so : LANGUAGE=fr gprename
The complete list of available languages is in the locale directory.

To uninstall: sudo make uninstall

Installation from SVN:
Install the application Subversion, open up a terminal, type:
svn co https://gprename.svn.sourceforge.net/svnroot/gprename gprename
and follow the instructions above.
---------------------------------------------------------------------------


Credits
---------------------------------------------------------------------------
 - Albino Riganello        Translation: Italian (2.3)
 - Algimantas Margevičius  Translation: Lithuanian (2.7)
 - Bart'omiej Gródek       Translation: Polish (1.24-2.6)
 - Dominik Fretz           Patch (<1.00)
 - Duane Toler             Bugs reports (<1.00)
 - Johan Spee              Logo, icon, bugs and features (2.1-2.2)
 - Jose Oswaldo            Translation: Brazilian Portuguese (2.1-2.5)
 - Marcin Juszkiewicz      Debian package (0.92)
 - Martintxo               Translation: Spanish (1.21-2.1)
 - Marvin Stark            Maintainer, Debian packager (2.2-2.5)
 - nestor di               Logo and icon (1.20-2.0)
 - Petter Sundlöf          Install script (0.92-1.3)
 - Rudinei Weschenfelder   Translation: Brazil (2.6.6)
 - Salman Farisy           Translation: Indonesian (2.4)
 - Tristesse               Author (0.90-1.24)
 - Wayne E. Nail           Bugs and features reports (2.0-2.5)
 - Zurd                    Maintainer (1.0-20140325)
---------------------------------------------------------------------------


Translation
---------------------------------------------------------------------------
Download GPRename, extract it and go into the locale directory.
Copy the file gprename.po and modify it to any language and send it on the
mailing list at gprename-users@lists.sourceforge.net

Note that some strings have a underscore ( _ ), use it as a mnemonics,
which is a letter underlined and you can call it with ALT-letter in the
application and, of course, don't underline 2 times the same letter.
---------------------------------------------------------------------------


To do
---------------------------------------------------------------------------
Recursive options to re-implement

Create an RPM of the latest version available.

Implement a new column Date that can be sorted.
Implement a new column Filesize that can be sorted.

Add a right-click option to rename just 1 file.

Option : Insert numerical at a specific position

Add a swap checkbox to swap text.
Example : "Artist - Song.mp3"
Swap to "Song - Artist.mp3" by using " - " as a swap text
---------------------------------------------------------------------------


Changelog
---------------------------------------------------------------------------
GPRename 20140325 - Zurd
Modified  icon file location in gprename.desktop
Added     "Permission denied" and "Path doesn't exist" error message

GPRename 5      2013-06-29 - Zurd
Modified  Field 'Add numbers starting at' from a maximum of 9,999 to 999,999

GPRename 4      2013-05-03 - Zurd
Modified  How GPRename rename long filename over 253 characters

GPRename 3      2013-01-19 - Zurd
Modified  Translation : French

GPRename 2.7    2012-05-15 - Zurd
Added		Translation : Lithuanian

GPRename 2.6.6  2011-11-30 - Zurd
Added           Translation : Brazil
Modified        nautilus-action script

GPRename 2.6.4  2010-06-21 - Zurd
Added		Translation : Russian

GPRename 2.6.3	2008-09-03 - Zurd
Added		Translation : Estonian

GPRename 2.6.2 - 2008-07-14 - Zurd
Fixed		Bug with makefile where it couldn't be built if there was spaces in your path

GPRename 2.6.1  2008-07-12 - Zurd
Added		Translation: Swedish

GPRename 2.6	2008-07-10 - Zurd
Added		Translation: Chinese Simplified
Added		The file gprename.schemas, to use for importing in Nautilus Actions
Fixed		Bug where opening gprename with only a file in the parameter (i.e. gprename README)
Modified	Translation: Polish
Modified	GPRename files are now in ~/.config/gprename instead of ~/
Modified	Optimization of the function preview
Modified	Automatic Preview: Will be turned off automatically if there's more than 10,000 files or directories

GPRename 2.5    2007-09-29 - Zurd, Marvin Stark
Added		Option: Show hidden files
Added		Option: Remember last directory
Added		Status bar
Added		Translation: Catalan
Added		Translation: Swedish
Modified	Translation: German

GPRename 2.4    2007-07-24 - Zurd, Marvin Stark
Added		Calling GPRename with a partial path ('gprename local' in /usr)
Added		Indonesian translation
Modified	Makefile, added PREFIX, icon location is set correctly now
Modified	Languages, automatically set by the system at opening (gettext)
Modified	Change the license from GPL-2 to GPL-3

GPRename 2.3    2007-06-14 - Zurd, Marvin Stark
Added		Manpage
Added		New installation system
Added		Debian 32x32 menu pixmap
Added		Translation: Italian
Added		Translation: Deutsch
Fixed		Bug with first language selected and opening GPRename
Modified	Translation: Brazilian Portuguese
Modified	Translation: Dutch
Modified	Translation: Polish

GPRename 2.2    2007-04-10 - Zurd
Added		Translation: Dutch
Added		Change mouse cursor to a watch when waiting
Fixed		Bug where accents characters couldn't be displayed
Fixed		Bug that couldn't display files starting with a dash (-)

GPRename 2.1    2007-03-13 - Zurd
Added		Option: Show path
Added		Option: Filter
Added		In the tab Case: Only first letter
Added		Refresh button
Added           Automatically opening the tree at start
Added		Translation: Brazilian Portuguese
Modified	Better handling of language encodings from the language file
Modified	ComboBox in Numerical to Radio Buttons

GPRename 2.0	2007-01-15 - Zurd
Added		Ability to see hidden files or directories
Added		Size window preferences saved when the application quits
Added		Option: Fullscreen
Added           Option: Automatic preview
Added		Option: View log
Added		Option: Trim double, beginning and end spaces
Added		Option: Disable security check (to rename case on a VFAT partition)
Added		Automatic change of label when choosing a different language
Added		Mnemonics on buttons and menus (Underscore letter: ALT-letter)
Added		Automatic resize of column Name and New name
Added		The file gprename.desktop to add an entry in the Application Menu
Modified	Port from GTK-Perl to GTK2-Perl
Modified	User interface
Modified	gprename-uninstall.sh with file test operators
Modified        Font: All text are now in Courier new
Removed         Option: Recursive renaming (to do)
Removed         Automatically opening the tree at start (to do)
Removed		Chinese Translation again, missing too much new words

GPRename 1.7    2006-04-26 - Zurd
Modified	Install script for compatibility with Gentoo's ebuild

GPRename 1.6	2006-02-27 - Zurd
Added		Warning message box if a file already exist before renaming it
Fixed		Bug #1095489 that would overwrite files

GPRename 1.5	2006-02-24 - Zurd
Added		Can now add text at the end with a checkbox
Modified	Languages file, README, install script, website, tips

GPRename 1.4 	2006-02-22 - Zurd
Added		uninstall.sh: to easily uninstall GPRename completely
Modified	Languages files, they now all have a standard. Some string in it are labeled 'x', since I can't translate them.
Modified	install.sh: Automatic install so the Gentoo's ebuild can be done more easily.

GPRename 1.3  	2006-01-27 - Zurd
Added		Tooltip for the Insert radio button
Added		Option to use the preview button or not
Added		Option to automatically trim spaces at the beginning
Added		Option to rename files recursively
Fixed		Bug with directories with spaces not selected after opening GPRename
Modified	About dialog
Modified	The insert radio button is now the default

GPRename 1.24 	2004-06-23 - Tristesse
Added		Translation: Polish

GPRename 1.23 	2004-03-18 - Tristesse
Fixed		Language title so that it is translated in all language
Fixed		Bug where 2 directories were selected at the opening

GPRename 1.22 	2004-03-16 - Zurd
Fixed		A bug, now the starting directory will be deselected when another directory is selected
Modified	Disabled the undo button when it can't be used
Modified	Set default focus on the 'Close' button in a Dialog

GPRename 1.21 	2004-03-14 - Zurd
Added		Translation: Spanish
Added		Select the start directory in the tree

GPRename 1.20 	2004-03-13 - Tristesse
Added		Window icon
Added		Language selection menu
Added		Translation: Chinese

GPRename 1.11 	2004-03-07 - Zurd
Added		Some tooltips for a better understanding of some options
Modified        Location of some widget, looks better now

GPRename 1.10 	2004-03-03 - Zurd
Modified	All the widgets on the four tabs at the bottom, takes now less space and there is more space available for the tree and the file/directory list

GPRename 1.00 	2004-02-25 - Zurd
Added		Renaming directory
Added		Translation: French
Added		Combo box "Do not keep existing filenames" in the numerical section
Added		The GPRename logo in ASCII ;-)
Fixed		A bug, now GPRename can better change case on a vfat partition
Fixed		A bug, now GPRename can use a dot in the First Letter Case Change
Fixed		A bug, now GPRename can open in 640x480 and a user can close the window
Modified	Installation file, cleaned it and it is now asking for a language to use
Modified	Opening directory, either the current directory or the first argument
Removed		Size and Modified time shown in the list of files
Removed 	Chinese translation, too much new labels and I don't know chinese

GPRename 0.92	2002-05-22 - Tristesse
Added		The script install.sh
Fixed		Bug with subdirectory
Modified	Default directory now set to $HOME

GPRename 0.91	2002-05-16 - Tristesse
Fixed		A bug, now GPRename can handle spaces in directories

GPRename 0.90	2001-11-30 - Tristesse
Initial release
---------------------------------------------------------------------------
