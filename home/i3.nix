{
  config,
  pkgs,
  lib,
  ...
}:
{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = {
      modifier = "Mod4";
      terminal = "ghostty";
      # fonts = {
      #   names = [ "FiraCode Nerd Font" ];
      #   style = "Bold Semi-Condensed";
      #   size = 12.0;
      # };
      gaps = {
        inner = 5;
        outer = 3;
      };
    };
  };
}
