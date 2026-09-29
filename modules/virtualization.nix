{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    qemu
    virt-manager
    virt-install
    edk2-ovmf
  ];

  virtualisation.libvirtd.enable = true;
}