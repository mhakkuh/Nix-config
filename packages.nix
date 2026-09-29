{ pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox
    git
    btop
    ripgrep
    wget
    vivaldi
    nano

  ];
}