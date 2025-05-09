{
  config,
  pkgs,
  lib,
  ...
}:
let
  mod = config.xsession.windowManager.i3.config.modifier;
  alt = "Mod1";
  left = "h";
  right = "l";
  down = "j";
  up = "k";

  ws1 = "1";
  ws2 = "2";
  ws3 = "3";
  ws4 = "4";
  ws5 = "5";
  ws6 = "6";
  ws7 = "7";
  ws8 = "8";
  ws9 = "9";
  ws10 = "10";
in
{
  programs.rofi.enable = true;

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

      defaultWorkspace = "workspace number ${ws1}";

      keybindings = {
        "${mod}+${left}" = "focus left";
        "${mod}+${right}" = "focus right";
        "${mod}+${up}" = "focus up";
        "${mod}+${down}" = "focus down";

        "${mod}+Return" = "exec ghostty";
        "${mod}+d" = "exec rofi -show run";

        "${mod}+Shift+q" = "kill";
        "${mod}+s" = "split h";
        "${mod}+v" = "split v";
        "${mod}+Shift+s" = "layout splith";
        "${mod}+Shift+v" = "layout splitv";

        # 1 monitor setup
        "${mod}+${alt}+1" =
          "exec xrandr --output HDMI-0 --off --output DP-0 --off --output DP-1 --off --output DP-2 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-3 --off --output DP-4 --off --output DP-5 --off";
        "${mod}+${alt}+2" =
          "exec xrandr --output HDMI-0 --mode 2560x1440 --pos 2560x0 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-3 --off --output DP-4 --off --output DP-5 --off";
        "${mod}+${alt}+3" =
          "exec xrandr --output HDMI-0 --mode 2560x1440 --pos 4000x496 --rotate normal --output DP-0 --mode 2560x1440 --pos 0x0 --rotate left --output DP-1 --off --output DP-2 --primary --mode 2560x1440 --pos 1440x496 --rotate normal --output DP-3 --off --output DP-4 --off --output DP-5 --off";

        "${mod}+1" = "workspace ${ws1}";
        "${mod}+2" = "workspace ${ws2}";
        "${mod}+3" = "workspace ${ws3}";
        "${mod}+4" = "workspace ${ws4}";
        "${mod}+5" = "workspace ${ws5}";
        "${mod}+6" = "workspace ${ws6}";
        "${mod}+7" = "workspace ${ws7}";
        "${mod}+8" = "workspace ${ws8}";
        "${mod}+9" = "workspace ${ws9}";
        "${mod}+0" = "workspace ${ws10}";
        "${mod}+Shift+1" = "move container to workspace ${ws1}";
        "${mod}+Shift+2" = "move container to workspace ${ws2}";
        "${mod}+Shift+3" = "move container to workspace ${ws3}";
        "${mod}+Shift+4" = "move container to workspace ${ws4}";
        "${mod}+Shift+5" = "move container to workspace ${ws5}";
        "${mod}+Shift+6" = "move container to workspace ${ws6}";
        "${mod}+Shift+7" = "move container to workspace ${ws7}";
        "${mod}+Shift+8" = "move container to workspace ${ws8}";
        "${mod}+Shift+9" = "move container to workspace ${ws9}";
        "${mod}+Shift+0" = "move container to workspace ${ws10}";
      };
    };
  };
}
