#! /bin/bash


gpio write 22 1
gpio write 26 1
gpio write 23 1
gpio write 24 1
gpio write 27 1
gpio write 25 1
gpio write 28 1
gpio write 29 1

echo "all relays should be on "
gpio write 22 0
sleep 0.5
gpio write 26 0
sleep 0.5
gpio write 23 0
sleep 0.5
gpio write 24 0
sleep 0.5
gpio write 27 0
sleep 0.5
gpio write 25 0
sleep 0.5
gpio write 28 0
sleep 0.5
gpio write 29 0
sleep 0.5

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

echo "test complete"
echo ""
echo "=========== ! important ==================="
echo "|     these are low active relays         |"
echo "|     meaing the output must be set to    |"
echo "|     0 or low to switch the realay on    |"
echo "==========================================="
echo ""
echo ""

