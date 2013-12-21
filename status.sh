#!/bin/bash

memu(){
    memu="$(free -m | sed -n 's|^-.*:[ \t]*\([0-9]*\) .*|\1|gp')"
    echo "$memu"
}

memt(){
    memt="$(free -m | sed -n 's|^M.*:[ \t]*\([0-9]*\) .*|\1|gp')"
    echo "$memt"
}

cpu(){
    cpu="$(eval $(awk '/^cpu /{print "previdle=" $5 "; prevtotal=" $2+$3+$4+$5 }' /proc/stat); sleep 0.4;
	      eval $(awk '/^cpu /{print "idle=" $5 "; total=" $2+$3+$4+$5 }' /proc/stat);
	      intervaltotal=$((total-${prevtotal:-0}));
	      echo "$((100*( (intervaltotal) - ($idle-${previdle:-0}) ) / (intervaltotal) ))")"
    echo "$cpu"
}

volpcm(){
    volpcm="$(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')"
        if [ "$volpcm" == "100%" ]; then
            pcm="100"
        else
            pcm="$(echo $volpcm | cut -c1-2)"
        fi
        echo "$pcm"
}

battery(){
	battery="$(acpi|grep -o '[0-9]*%'|grep -o '[0-9]*')"
	echo "$battery"
}

dates(){
	dates="$(date | grep -o '^..........')"
	echo "$dates"
}

time1(){
	time1="$(date | grep -o '..:..:..' | grep -o '^..:..')"
	echo "$time1"
}


TIMING=0.5

netw(){
	netw="$(iwconfig wlp3s0 |grep -e 'ESSID' |grep -o '\".*\"')"
	echo "$netw"
}



echo "Net: $(netw)"
echo "Bat: $(battery)"
echo "Mem: $(memu)M"
echo "Vol: $(volpcm)%"
echo "Time: $(dates) $(time1)"
