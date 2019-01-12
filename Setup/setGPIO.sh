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

echo "all relays should be on "
echo "switching off each led in tern"
gpio write 22 1
sleep 0.5
gpio write 26 1
sleep 0.5
gpio write 23 1
sleep 0.5
gpio write 24 1
sleep 0.5
gpio write 27 1
sleep 0.5
gpio write 25 1
sleep 0.5
gpio write 28 1
sleep 0.5
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
echo ""
read -n 1 -s -r -p "This window is not now needed press any key to exit"