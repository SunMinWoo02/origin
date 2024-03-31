{ pkgs }: {
  deps = [
    pkgs.age
    pkgs.vim
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}