{ config, pkgs, ... }:

{
	networking = {
		hostName = "davidXPS"; # Define your hostname.
#		wireless.enable = true;  # Enables wireless support via wpa_supplicant.
		networkmanager.enable = true;
  };	
}