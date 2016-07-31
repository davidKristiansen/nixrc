{ config, pkgs, ... }:

{
	environment.systemPackages = [pkgs.powertop];
	# powertop needs mst and so far it does not load when needed
	boot.kernelModules = [ "msr" ];

#	systemd.services.powertop = {
#		wantedBy = [ "multi-user.target" ];
#		serviceConfig = {
#			Type = "oneshot";
#			ExecStart = ''${pkgs.powertop}/bin/powertop --auto.tune'';
#		};
#	};
}