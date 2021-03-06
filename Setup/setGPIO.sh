#! /bin/bash
echo "Setting gpio pins as output"  
gpio mode 26 out
gpio mode 22 out
gpio mode 23 out
gpio mode 27 out
gpio mode 24 out
gpio mode 28 out
gpio mode 25 out
gpio mode 29 out

gpio write 22 1
gpio write 26 1
gpio write 23 1
gpio write 24 1
gpio write 27 1
gpio write 25 1
gpio write 28 1
gpio write 29 1

echo "all relays should be off now "
echo ""
echo ""
echo "=========== ! important ==================="
echo "|     these are low active relays         |"
echo "|     meaing the output must be set to    |"
echo "|     0 or low to switch the realay on    |"
echo "==========================================="
echo ""
echo "This window is now no longer needed."
echo "Press t to test the relays or any other key to exit"

read -n 1 result
if [[ $result = 't' ]]
then 
        echo "Running relay test"
        /home/pi/DaybaScripts/piRelayBoard/Setup/testRelays.sh
        read -n 1 -s -r -p "This window is now no longer needed press any key to exit"
         
fi
