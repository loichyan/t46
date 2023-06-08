{ pkgs, ... }:
{
  # Install packages.
  home.packages = with pkgs;  [
    # Dotfiles manager
    chezmoi

    # Utils
    bat
    delta
    erdtree
    fd
    jq
    lsd
    netcat
    ripgrep
    tmux
    tokei
    wakatime
    nodePackages.serve

    # Git
    commitizen
    git
    lazygit

    # Neovim
    neovim
    tree-sitter
    # used by LuaSnip
    luajitPackages.jsregexp

    # Shell
    direnv
    nix-direnv
    shellcheck
    shfmt
    starship
    zoxide

    # Dockerfile
    hadolint

    # C/C++
    clang-tools
    cmake
    gcc
    gnumake

    # Nix
    rnix-lsp

    # Node
    nodejs
    nodePackages.pnpm
    nodePackages.yarn
    # lsp/formatter/linter
    nodePackages.eslint
    nodePackages.prettier
    nodePackages.typescript-language-server
    nodePackages.vscode-langservers-extracted
    nodePackages.yaml-language-server

    # Prose linter & spell checker
    nodePackages.cspell
    vale

    # Deno
    deno

    # Python
    (python3.withPackages (p: with p; [ black ]))
    poetry
    nodePackages.pyright

    # Rust
    (with pkgs.fenix; with stable; combine [
      defaultToolchain
      rust-src
      rust-analyzer
    ])
    # cargo ulities
    cargo-edit
    cargo-nextest
    cargo-readme
    cargo-release
    cargo-tarpaulin
    cargo-watch
    myPkgs.cargo-nightly-expand
    # wasm
    binaryen
    trunk
    wasm-bindgen-cli
    wasm-pack
    # toml
    taplo-cli

    # Lua
    stylua
    sumneko-lua-language-server

    # Java
    jdk8

    # Haskell
    ghc
    haskell-language-server

    # Dev Ops
    caddy
    butane
    xray

    # Perl
    perl
    # used by Yarn autocompleton
    perl536Packages.JSONPP

    # Cue
    cue

    # Document
    texlive.combined.scheme-full
    texlab
  ];
}
