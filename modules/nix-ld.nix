{ config, pkgs,  ... }:
{
  programs.nix-ld.enable = true;

  programs.nix-ld.libraries = with pkgs; [
  stdenv.cc.cc
  zlib
  openssl

  xorg.libXext
  xorg.libXrandr
  xorg.libXi
  xorg.libXcursor
  xorg.libXinerama
  xorg.libXrender
  xorg.libXfixes
  xorg.libXxf86vm
  libGLU
  libGL
  openal
  libpulseaudio
  wayland
  alsa-lib
  libGL
  SDL2
  vlc
];
}

