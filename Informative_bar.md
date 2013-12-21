Informative bar
================
The informative bar is going to show all the interesting informations such as Wifi, battery, or volume statuses.
One might also create a informative bar about packagemanager informations, runtime, musicplayer or whatever
informations might be accessible to you.

Getting Informations
--------------------
To get system informations you might use programs like acpi for batterystats, iwconfig for networking informations.

For an example see the file status.sh

Important is that the informations are given line by line so dmenu can interprete them.


After creating the informations these are piped into dmenu, as seen in dmenu_status.
