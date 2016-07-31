{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    arc-gtk-theme
    arc-icon-theme
    numix-icon-theme
    alsaLib
    alsaPlugins
    alsaUtils
    python
    python3
    base16
    htop
    wget
    screenfetch 
    firefox
    gnumake
    gcc
    gtk_engines
    gtk-engine-murrine
    lxappearance
    unzip
    p7zip
    git 
    stow
    vim
#   (import ./vim.nix) -gaps
    pango
    rxvt_unicode
    urxvt_perls
    zsh-prezto
    sublime3
    xlibs.xcursorthemes
    xlibs.xbacklight
  ];
}