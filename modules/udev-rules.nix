{ pkgs, ... }:

{
services.udev.extraRules = ''
SUBSYSTEM=="input", \
  ATTRS{idVendor}=="373b", \
  ATTRS{idProduct}=="1053", \
  ENV{ID_INPUT_JOYSTICK}="0"
'';
}
