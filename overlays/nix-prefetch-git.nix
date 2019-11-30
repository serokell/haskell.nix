self: super: {
  nix-prefetch-git = self.stdenv.mkDerivation {
    name = "nix-prefetch-git";
    buildCommand = ''
      mkdir -p "$out/bin"
      cp ${./nix-prefetch-git} "$out"/bin/nix-prefetch-git
      chmod a+x "$out"/bin/nix-prefetch-git
    '';
  };
}
