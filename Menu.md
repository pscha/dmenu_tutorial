Menu's
======
A menu could be used to control daemons like the moc-daemon, as it is done by dmenu_mocp https://github.com/mutantturkey/mocicon/blob/master/dmenu_mocp/dmenu_mocp

To create a menu you first have to pipe the the menuitems line by line into dmenu. Afterwards dmenu returns
the selected item as a sting which can be matched.
Now all that is missing are the if causes that check which item has been selected and that launches applications,
scripts or manipulates a daemon.

Example:
--------
