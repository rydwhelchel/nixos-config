{ pkgs, lib, ... }:
{
  fonts = {
    fontDir.enable = true;

    packages = [
      pkgs.fira-code
      pkgs.jetbrains-mono
    ];
  };
}
