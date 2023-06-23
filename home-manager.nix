{ config, pkgs, ... }:
let
  pcfg = config.programs.emacs.init.usePackage;
in
{
  imports = [
    <home-manager/nixos>
  ];

  home-manager.users.rafal = {
    /* The home.stateVersion option does not have a default and must be set */
    home.stateVersion = "23.05";

    programs.git = {
      enable = true;
      userName = "Rafał Gwoździńsi";
      userEmail = "rafal@gwozdzinski.com";
      extraConfig = {
        init.defaultBranch = "main";
      };
    };

    dconf.settings = {
      "org/gnome/desktop/interface" = {
        enable-hot-corners = false;
      };
    };
  };
}
