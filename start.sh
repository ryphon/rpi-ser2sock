echo "Starting now..."
uname -mni

/usr/local/bin/ser2sock -p $LISTENER_PORT -s $SERIAL_DEVICE -b $BAUD_RATE
