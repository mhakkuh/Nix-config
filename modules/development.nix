{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    python3
    python3Packages.pip
    ripgrep
    wget
    vim
    micro
    nano
    bc
    diffutils
    man-db
    man-pages
    texinfo
    glade
    meld
  ];
}