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

  home.file = {
    ".emacs.d/init.el".source   = ./sources/init.el;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      enable-hot-corners = false;
    };
  };
}
