{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bash-completion
    bc
    btop
    cowsay
    diffutils
    duf
    fastfetch
    figlet
    gum
    htop
    less
    micro
    nano
    nano-syntax-highlighting
    pv
    ripgrep
    rsync
    sl
    starship
    superfile
    vim
    wget
    which
  ];
}