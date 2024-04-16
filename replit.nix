{ pkgs }: {
  deps = [
    pkgs.oed
    pkgs.age
    pkgs.vim
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}