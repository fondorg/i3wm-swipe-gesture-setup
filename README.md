Setup of multitouch touchpad gesture workplace switching in [i3 window manager](https://i3wm.org/)

### Prerequisites

* [libinput-gestures](https://github.com/bulletmark/libinput-gestures)
* [jq - command line json parser](https://stedolan.github.io/jq/download/)

Follow the installation section of the `libinput-gestures` utility.  

### Setup

Copy the content of the `dotfiles` directory into your home directory.  
Make the `.config/i3/swipe_desktop.sh` file executable.  

Add the following to your `.config/i3/config` file:

```bash
exec_always libinput-gestures-setup start
```
and restart i3wm or reboot

### Configuration

By default there are 3-finger left and right swipes to switch the workplace.  
Check the `.config/libinput-gestures.conf` to adjust swiping gestures or to inverse direction.