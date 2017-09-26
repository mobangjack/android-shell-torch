switch() {
	echo $1 > /sys/class/leds/flashlight/brightness
	echo $1
}

toggle() {
	switch 1
        sleep 1
        switch 0
        sleep 1
}

while :
do
	toggle
done

