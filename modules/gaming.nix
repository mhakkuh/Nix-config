{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gamescope
    lutris
    protonup-qt
    steam
    wine
    winetricks
    xivlauncher
  ];
}