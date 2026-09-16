# Managed by g-helper install script. Safe to delete (also remove the
# matching '[ /etc/nixos/ghelper.nix ] ++' from configuration.nix).
{ ... }:
{
  imports = [ /etc/nixos/ghelper/nixos/module.nix ];
  services.ghelper.enable = true;
}
