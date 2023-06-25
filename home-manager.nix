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

  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
  };

  home.file = {
    ".emacs.d/init.el".source   = ./sources/init.el;
    ".bashrc".source = ./sources/.bashrc;
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      enable-hot-corners = false;
    };
  };
}
