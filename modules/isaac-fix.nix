{ config, pkgs, ...}:

[
environment.systemPackages = [
  (pkgs.steam-run.override {
    extraPkgs = pkgs: with pkgs; [
      libGLU
      libGL
      openal
      libpulseaudio
    ];
  })
];
]
