{ pkgs, lib, ... }:
{
  programs.git = {
    enable = true;
    userName = "Ryan Whelchel";
    userEmail = "rydwhelchel@gmail.com";

    extraConfig = {
      pull.rebase = false;
    };
  };

  programs.lazygit = {
    enable = true;
  };
}
