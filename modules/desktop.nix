{ pkgs, ... }:

{
  services.xserver.enable = true;

  services.desktopManager.plasma6.enable = true;
  services.displayManager.sddm.enable = true;

  environment.systemPackages = with pkgs; [
    baobab
    brightnessctl
    dolphin
    filelight
    gparted
    gwenview
    kate
    konsole
    spectacle
  ];
}