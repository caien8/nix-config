{ config, pkgs, ... }:
{
  imports = [
    ./modules/themes
    ./modules/apps
  ];
  home.username = "caien";
  home.homeDirectory = "/home/caien";
  home.packages = with pkgs; [
    bat
    brightnessctl
    htop
    tree
    vscodium
    librewolf
    xfce.thunar
    dunst
    pavucontrol
  ];
  home.file = {};

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
    XCURSOR_THEME = "Bibata-Modern-Classic";
  };

# services = {
#     udiskie = {
#     enable = true;
#      automount = true;
#     notify = true;
#      tray = "auto";
#    };
#  };  

  home.stateVersion = "22.11"; 
  programs.home-manager.enable = true;
}
