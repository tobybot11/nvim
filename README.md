# tobybot11's nvim configuration setup

## history

### first attempt

Initially I follwed [How I Setup Neovim On My Mac To Make It Amazing - Complete Guide](https://www.youtube.com/watch?v=vdn_pKJUda8&t=256s) and then
[Josean's Github](https://github.com/josean-dev/dev-environment-files) to create the first attempt at a full on neovim setup.

This helped me to understand lua and neovim much better but I wasn't happy with the directory structure and the amount of work each plugin required for just default setup.

### second round

Cleaned up the tree more to my liking and added some plugins and tweask from kickstart.nvim that i liked better

## github repo [tobybot11/nvim](https://github.com/tobybot11/nvim) - uses ssh auth

## managing the setup on regular basis

```neovim
:PackerUpdate
:checkhealth
```

## helpful solutions to various checkhealth problems

```bash
npm install -g tree-sitter-cli
npm install -g neovim
npm install -g pnpm
npm install -g live-server
pnpm info neovim
pip3 install neovim
gem install neovim
yay cpanminus
cpanm -n Neovim::Ext
```

```neovim
:TSInstall markdown markdown_inline
:TSUpdate
```

```tree
.
├── init.lua
├── lua
│   ├── core
│   │   ├── colorscheme.lua
│   │   ├── keymaps.lua
│   │   └── options.lua
│   ├── packer-config.lua <- insert plugins here
│   └── plugins <- plugin specific configurations
│       ├── autopairs.lua
│       ├── bluloco.lua
│       ├── cmp-dictionary.lua
│       ├── colorizer.lua
│       ├── comment.lua
│       ├── fidget.lua
│       ├── gitsigns.lua
│       ├── hlargs.lua
│       ├── impatient.lua
│       ├── lsp
│       │   ├── lspconfig.lua
│       │   ├── lspsaga.lua
│       │   ├── mason.lua
│       │   └── null-ls.lua
│       ├── lualine.lua
│       ├── nvim-cmp.lua
│       ├── nvim-tree.lua
│       ├── rust-tools.lua
│       ├── symbols-outline.lua
│       ├── tabout.lua
│       ├── telescope.lua
│       ├── treesitter.lua
│       ├── vimspector.lua
│       └── which-key.lua
├── plugin
│   └── packer_compiled.lua
└── README.md
```
