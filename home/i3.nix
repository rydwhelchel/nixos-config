{
  config,
  pkgs,
  lib,
  ...
}:
let
  modifier = config.xsession.windowManager.i3.config.modifier;
  left = "h";
  right = "l";
  down = "j";
  up = "k";
in
{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = {
      modifier = "Mod4";
      terminal = "ghostty";
      fonts = {
        #   names = [ "FiraCode Nerd Font" ];
        #   style = "Bold Semi-Condensed";
        size = 12.0;
      };

      gaps = {
        inner = 5;
        outer = 3;
      };

      defaultWorkspace = "workspace number 1";

      # keybindings = {
      #   "${modifier}+${left}" = "focus left";
      #   "${modifier}+${right}" = "focus right";
      #   "${modifier}+${up}" = "focus up";
      #   "${modifier}+${down}" = "focus down";
      # };
    };
  };
}
