{ pkgs, ... }:

{
  # Define a user account. Don't forget to set password with 'passwd'.
  users.users."damian" = {
    isNormalUser = true;
    description = "damian";
    shell = pkgs.fish;
    extraGroups = [ "networkmanager" "wheel" ];
    };
}
