---@type vim.lsp.Config
return {
  cmd = { "nixd" },
  filetypes = { "nix" },
  root_markers = { "flake.nix", ".git" },

  settings = {
    nixd = {
      nixpkgs = {
        expr = "import <nixpkgs> {} ",
      },
      formatting = {
        command = { "nixfmt-rfc-style", "nixfmt-tree", "nixfmt", "alejandra" },
      },
      options = {
        nixos = {
          expr = '(builtins.getFlake ("git+file://" + toString ./.)).nixosConfigurations.elitenix.options',
        },
        home_manager = {
          expr = '(builtins.getFlake ("git+file://" + toString ./.)).nixosConfigurations."zhyie@elitenix".options.home-manager.users.type.getSubOptions []',
        },
      },
      diagnostic = {
        suppress = { "sema-extra-with" },
      },
    },
  },
}
