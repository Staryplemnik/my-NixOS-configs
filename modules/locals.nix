{ pkgs, ... }:

{
  # Timezone
  time.timeZone = "Europe/Warsaw";
  
  i18n.defaultLocale = "en_US.UTF-8";
  
  # Select internationalisation properties. 
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
}
