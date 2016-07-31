{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs; [
		blueman
		pcmanfm
		ranger
		dmenu
		i3status
		i3lock
		i3blocks
		j4-dmenu-desktop
		rofi
		compton
	];

	services.xserver = {
		windowManager = {
			i3-gaps.enable = true;
			default = "i3-gaps";
    	};
	};
	services.xserver.displayManager.sessionCommands = "${pkgs.networkmanagerapplet}/bin/nm-applet &";
}