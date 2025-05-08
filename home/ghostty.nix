{ pkgs, lib, ... }:
{
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "catppuccin-mocha";
      font-size = 18;
      window-decoration = false;
    };
  };
}
