# piRelayBoard
Sets up the Raspberry pi GPIO for use with 8 way relay board 

# Installation 

Starting from a fresh installation of the Raspberry Pi operating system switch it on and when you're at the desktop. (see the useful pages section at the  end of this document for links on how to do this)

1. Click on the `Terminal` Icon at the top left of the screen 

![Pic of Terminal Icon][Terminal]

3. Paste the following commands into the terminal windows, pressing return/enter after each command.

4. ```bash
   mkdir ~/DaybaScripts
   ```
5. ```bash
   cd ~/DaybaScripts
   ```
6. ```bash
   git clone https://github.com/thebhd/piRelayBoard.git
   ```
7. ```bash
   ~/DaybaScripts/piRelayBoard/setup.sh
   ```

8. Follow any instructions that appear in the terminal window and reboot the Pi when prompted. 

9. This should install the scratch extension and get everything ready for you. 

# Using the relay board with Scratch 2

For the Relay Board to work we need to set the relevant GPIO (General Purpose Input Output) pins to act as output pins. We have placed a shortcut on the desktop to a script that does this for you. 

### Running the set GPIO script 

Double click the piRelayBoard Set GPIO icon (shown in red box below) on the desktop of the Raspberry Pi. This will open a window with white text on a black background telling you that the gpio pins have been set to output. If you wish to test the relays press ```t``` otherwise press any other key to exit the script and proceed onto using Scratch 2

![Set GPIO Icon and Terminal running][gpioSet]

## Example Scratch2 program 

We have created an example scratch 2 project to get you started with the relay board to use it do the following.

1. Click on the ```Raspberry start button``` on the top left of the screen.

2. Select ```Progamming``` and click ```Scratch 2```

3. Click ```File > Load Project```

4. Click/Double click ```Desktop(left column) > Scratch2 Examples > singleRelayExample.sb2```

5. Click ```open``` if it does not automatically open when selected 

6. Click ```Ok``` to replace the contents of the current project

This will let you control the first relay with the up and down arrow keys.

### Controlling the arm from scratch 

Having **set the GPIO pins to output** run Scratch 2 

The blocks for controlling the arm need to be loaded by:

1. Click on `more blocks`
2. Click `Add an Extension`
3. Double click on the Pi GPIO icon 

![Scratch extension library with gpio extension highlighted][ExtLib]


You should now see the GPIO blocks in more blocks section

As Relays can only act as an output we will only use the following block

![GPIO Block][gpioBlock] 

To select the relay, set the GPIO number, (highlighted in red,) to the number marked on the relay itself.

To set the relays state Active/Inactive (on/off) Set (blue highlight:)

* Output Low - sets the relay to **Active (on)**
* Output High - sets the relay to **Inactive (off)**

### Tips for good programs 

- Due to the way the connector is wired up on the pi check that you have the correct GPIO number in the block as the one marked on the relay itself.
- Remember that the relays are **low (0), Active** that is to switch relay on you have to set its GPIO pin to low or 0  

# Useful pages 

[Download page for Raspbian](https://www.raspberrypi.org/downloads/raspbian/)

Using windows and Win32DiskImager to copy the image to the SD card - [Win32DiskImager instructions](https://www.raspberrypi.org/documentation/installation/installing-images/windows.md)

[Official getting started with the Raspberry Pi Instructions](https://projects.raspberrypi.org/en/projects/raspberry-pi-getting-started) Step 6 is particularly relevant as it shows you how to setup Wi-Fi/Wireless

Additional Wi-Fi/Wireless setup details can be found here - https://projects.raspberrypi.org/en/projects/raspberry-pi-using/4



## Credit goes to ...

* The work of the ScratchX team https://github.com/LLK/scratchx/wiki 

* The Raspberry Pi foundation 

[Terminal]: ./README/Terminal.png "Terminal Icon at top of screen"

[gpioSet]: ./README/gpioSet.png "Set GPIO script icon and server terminal window running "

[extLib]: ./README/scratchExtensionLibary.png "text"

[gpioBlock]: ./README/gpioBlock.png "text"




