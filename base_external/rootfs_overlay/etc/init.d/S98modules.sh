#! /bin/sh


case "$1" in
start)
echo "Starting initialization for I2C module"
modprobe i2c-dev
modprobe i2c-bcm2835
i2cdetect -y 1
echo "i2c modules loaded succesfully"

cd /etc/tmpdir 
rm -rf tempdata.txt
touch tempdata.txt
chmod +rwx tempdata.txt &
cd /usr/bin
./tmp_sensor -E 
echo "temperature sensor module started"
;;
stop)
echo "Removing I2C modules"
rmmod i2c-bcm2835
rmmo i2c-dev
;;
*)
echo "Usage: $0 {start|stop}"
exit 1
esac
exit 0
