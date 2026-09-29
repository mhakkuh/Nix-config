{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    awww
    cliphist
    cmatrix
    digital-rain
    discord
    openrgb
    telegram-desktop
    space-cadet-pinball
    cowsay
    sl
  ];
}