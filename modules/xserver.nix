{ pkgs, ... }:

{
 services.xserver.enable = true;
 services.xserver.desktopManager.mate.enable = true; 
 services.xserver.xkb = {
   layout = "pl";
   variant = "";
};
}
