{ pkgs, ... }:

{
  # Timezone
  time.timeZone = "Europe/Warsaw";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADRESS = "pl_PL.UTF-8";
    LC_IDENTIFICATION = "pl_PL.UTF-8";
    LC_MEASUREMENT = "pl_PL.UTF-8";
    LC_MONETARY = "pl_PL.UTF-8";
    LC_NAME = "pl_PL.UTF-8";
    LC_NUMERIC = "pl_PL.UTF-8";
    LC_PAPER = "pl_PL.UTF-8";
    LC_TELEPHONE = "pl_PL.UTF-8";
    LC_TIME = "pl_PL.UTF-8";
  };

  # Zabijamy samo Alt+F1..F12 jako VT-switch, zostaje tylko Ctrl+Alt+Fn
  console.keyMap = pkgs.writeText "pl-noaltvt.map" ''
    keymaps 0-127
    include "pl"

    alt keycode 59 = F1
    alt keycode 60 = F2
    alt keycode 61 = F3
    alt keycode 62 = F4
    alt keycode 63 = F5
    alt keycode 64 = F6
    alt keycode 65 = F7
    alt keycode 66 = F8
    alt keycode 67 = F9
    alt keycode 68 = F10
    alt keycode 87 = F11
    alt keycode 88 = F12
  '';
}
