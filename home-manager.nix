{
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
}
