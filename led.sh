if [ $# -lt 1 ]; then
	exit
fi

n=$1

if [ $n == 1 -o $n == 0 ];
then
	echo $1 > /sys/class/leds/flashlight/brightness
else
	echo 'invalid argument (0 or 1 expected)'
fi
