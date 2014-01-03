dmenu_tutorial
==============

This is intended as a tutorial about using dmenu as a multi-purpose menu and
information bar.

Needed for this is the program dmenu written by the suckless.org guys, and some
practice in shell-scripting.

First see the Information bar. There I'll tell you a bit about the basics.

Afterward you should try the menu options of dmenu.

Informative bar
================
The informative bar is going to show all the interesting informations such as
Wifi, battery, or volume statuses.
One might also create a informative bar about packagemanager informations,
runtime, musicplayer or whatever
informations might be accessible to you.

Getting Informations
--------------------
To get system informations you might use programs like acpi for batterystats,
iwconfig for networking informations.

For an example see the file status.sh

Important is that the informations are given line by line so dmenu can
interprete them.


After creating the informations these are piped into dmenu, as seen in
dmenu_status.

Menu's
======
A menu could be used to control daemons like the moc-daemon, as it is done by
dmenu_mocp
https://github.com/mutantturkey/mocicon/blob/master/dmenu_mocp/dmenu_mocp

To create a menu you first have to pipe the the menuitems line by line into
dmenu. Afterwards dmenu returns
the selected item as a sting which can be matched.
Now all that is missing are the if causes that check which item has been
selected and that launches applications,
scripts or manipulates a daemon.

Example:
--------

