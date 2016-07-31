{ config, pkgs, ... }:

{
	services.xserver = {
    	enable = true;
    	layout = "no";
    	xkbOptions = "eurosign:e";
    	videoDrivers = [ "intel" ];
#    	xterm.enable = false;

    	displayManager = {
      		slim = {
        		enable = true;
        		defaultUser = "david";
      		};
    	};

    	synaptics = {
      		enable = true;
      		twoFingerScroll = true;
      		buttonsMap = [ 1 3 2 ];
    	};
  
  	};
}