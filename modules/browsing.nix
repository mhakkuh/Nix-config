{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    vivaldi
    zen-browser
    browsh
    carbonyl
    links
    lynx
    w3m
  ];
}