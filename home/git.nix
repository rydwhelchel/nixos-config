{ pkgs, lib, ... }:
{
  programs.git = {
    enable = true;
    userName = "Ryan Whelchel";
    userEmail = "rydwhelchel@gmail.com";
  };

  programs.lazygit = {
    enable = true;
  };
}
