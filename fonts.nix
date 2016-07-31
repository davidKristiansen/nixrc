{ config, pkgs, ... }:

{
	fonts = {
		enableCoreFonts = true;
		enableFontDir = true;
		enableGhostscriptFonts = true;
		fonts = with pkgs; [
			font-awesome-ttf
			inconsolata 
			fira
			fira-code
		];
	};
}