{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ardour
    glava
    pavucontrol
    spotify
    spotube
    vlc
  ];
}