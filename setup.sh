#! /bin/bash
echo "running piRelayBoard setup script"
mkdir ~/DaybaScripts
cd ~/DaybaScripts


echo "copying template file to the pi"


#copy short cut to the pi desktop
cp  ~/DaybaScripts/piRelayBoard/Setup/piRelayBoardSetGPIO.desktop ~/Desktop/piRelayBoardSetGPIO.desktop

#copy the examples to the desktop
mkdir ~/Desktop/Scratch2Examples
sudo cp ~/DaybaScripts/piRelayBoard/Setup/Scratch2Examples/* ~/Desktop/Scratch2Examples/

