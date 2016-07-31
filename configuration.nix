# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./i18n.nix
      ./timezone.nix
      ./xserver.nix
      ./standard-packages.nix
      ./i3-setup.nix
      ./fonts.nix
      ./network.nix
      ./nobeep.nix
      ./services.nix
      ./powertop.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };



  nixpkgs.config = {
    allowUnfree = true;

      firefox = {
        enableGoogleTalkPlugin = true;
        enableAdobeFlash = true;
      };
  };


  nix.useSandbox = true;



  

  # Enable zsh
  programs.zsh.enable = true;
  users.defaultUserShell = "/run/current-system/sw/bin/zsh";



  hardware = {
    pulseaudio = {
      enable = true;
      systemWide = true;
    };

    bluetooth.enable = true;

    opengl = {
      driSupport32Bit = true;
      extraPackages = [ pkgs.vaapiIntel pkgs.libvdpau-va-gl ];
    };
  };



  

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.extraUsers.david = {
    isNormalUser = true;
    home = "/home/david";
    description = "David Kristiansen";
    extraGroups = [ "wheel" "networkmanager" "uucp" "tty" ];
    uid = 1000;
  };
  
  # Enable Garbage collection
  nix.gc = {
    automatic = true;
    dates = "03:15";
  };

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "16.09";

}
