# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" "sd_mod" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/82ef921a-c7e7-4a3d-90cb-ca47957adab1";
      fsType = "btrfs";
      options = [ "subvol=nixos" ];
    };

  fileSystems."/var" =
    { device = "/dev/disk/by-uuid/82ef921a-c7e7-4a3d-90cb-ca47957adab1";
      fsType = "btrfs";
      options = [ "subvol=var" ];
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/82ef921a-c7e7-4a3d-90cb-ca47957adab1";
      fsType = "btrfs";
      options = [ "subvol=home" ];
    };

  fileSystems."/opt" =
    { device = "/dev/disk/by-uuid/82ef921a-c7e7-4a3d-90cb-ca47957adab1";
      fsType = "btrfs";
      options = [ "subvol=opt" ];
    };

  fileSystems."/vm" =
    { device = "/dev/disk/by-uuid/82ef921a-c7e7-4a3d-90cb-ca47957adab1";
      fsType = "btrfs";
      options = [ "subvol=vm" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/16F7-81B4";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/f90cf4d1-ab1b-466c-8c57-9d0164c5eddf"; }
    ];

  nix.maxJobs = lib.mkDefault 4;
}
