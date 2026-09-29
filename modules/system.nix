{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    android-tools
    btrfs-progs
    btrfs-assistant
    cryptsetup
    dmraid
    dosfstools
    e2fsprogs
    ethtool
    fsarchiver
    gparted
    hdparm
    hwinfo
    lsscsi
    lvm2
    mdadm
    mtools
    smartmontools
    snapper
    squashfsTools
    usbutils
    unrar
    unzip
    usb_modeswitch
  ];
}