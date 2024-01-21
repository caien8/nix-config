{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "";
    displayManager = {
      sddm.enable = true;
    };
    desktopManager.plasma5.enable = true;
    windowManager.awesome = {
       enable = true;
       luaModules = with pkgs.luaPackages; [
          luarocks
       ];
    };
  };
}
