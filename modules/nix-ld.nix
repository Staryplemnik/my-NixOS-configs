{ config, pkgs,  ... }:
{
  programs.nix-ld.enable = true;

  programs.nix-ld.libraries = with pkgs; [
  stdenv.cc.cc
  zlib
  openssl

  libXext
  libXrandr
  libXi
  libXcursor
  libXinerama
  libXrender
  libXfixes
  libXxf86vm
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

