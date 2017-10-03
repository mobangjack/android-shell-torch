switch() {
	mosquitto_pub -h twogen -t 'led/newstate' -m $1
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

