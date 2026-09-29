{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    python3
    python3Packages.pip
    glade
    meld
    ripgrep
    texinfo
    vscodium
  ];
}