
{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.caien = {
    isNormalUser = true;
    description = "caien";
    extraGroups = [ "networkmanager" "wheel" "libvirtd"];
    packages = with pkgs; [];
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     neovim 
     wget
     kitty 
     git 
     #home-manager
     home-manager
     # virtualization
     qemu
     qemu_kvm
     libvirt
     virt-manager
  ];

  # VIRTUALIZATION
  virtualisation.libvirtd.enable = true;
  programs.dconf.enable = true;

}
