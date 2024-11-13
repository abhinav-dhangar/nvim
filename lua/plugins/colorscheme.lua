return {
  {
    -- For proper Kitty config rendering
    "fladson/vim-kitty",
  },

  -- ---------------- --

  {
    "zenbones-theme/zenbones.nvim",
    dependencies = { "rktjmp/lush.nvim" },
  },
  {
    -- DARK THEMES INCLUDED:  gruvbox ("set background=dark")
    -- LIGHT THEMES INCLUDED: gruvbox ("set background=light")
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox-theme",
    lazy = false,
    priority = 1000,
    config = true,
    opts = ...,
  },
  {
    -- DARK THEMES INCLUDED:  kanagawa/kanagawa-wave, kanagawa-dragon
    -- LIGHT THEMES INCLUDED: kanagawa-lotus
    "rebelot/kanagawa.nvim",
    name = "kanagawa-theme",
    lazy = false,
    priority = 900,
  },
  {
    -- DARK THEMES INCLUDED:  material/material-palenight, material-darker, material-deep-ocean, material-oceanic,
    -- LIGHT THEMES INCLUDED: material-lighter,
    "marko-cerovac/material.nvim",
    name = "material-theme",
    lazy = false,
    priority = 875,
  },
  {
    "Mofiqul/adwaita.nvim",
    name = "adwaita-theme",
    lazy = false,
    priority = 850,
  },
  {
    -- DARK THEMES INCLUDED:  nightfox, duskfox, nordfox, terafox, carbonfox
    -- LIGHT THEMES INCLUDED: dayfox, dawnfox
    "EdenEast/nightfox.nvim",
    name = "nightfox-theme",
    lazy = false,
    priority = 850,
    config = function()
      require("nightfox").setup({
        options = {
          styles = {
            comments = "italic",
            keywords = "bold",
            strings = "italic",
          },
        },
      })
    end,
  },
  {
    -- DARK THEMES INCLUDED:  rose-pine/rose-pine-main, rose-pine-moon
    -- LIGHT THEMES INCLUDED: rose-pine-dawn
    "rose-pine/neovim",
    name = "rose-pine-theme",
    lazy = false,
    priority = 825,
    config = function()
      require("rose-pine").setup({
        variant = "auto", -- auto, main, moon, or dawn
        dark_variant = "main", -- main, moon, or dawn
        
        disable_background = false,  -- Enables transparency

        groups = {
          border = "muted",
          link = "iris",
          panel = "surface",
  
          error = "love",
          hint = "iris",
          info = "foam",
          note = "pine",
          todo = "rose",
          warn = "gold",
  
          git_add = "foam",
          git_change = "rose",
          git_delete = "love",
          git_dirty = "rose",
          git_ignore = "muted",
          git_merge = "iris",
          git_rename = "pine",
          git_stage = "iris",
          git_text = "rose",
          git_untracked = "subtle",
  
          h1 = "iris",
          h2 = "foam",
          h3 = "rose",
          h4 = "gold",
          h5 = "pine",
          h6 = "foam",
      },



      })
      
    end,
  
  },
  {
    -- DARK THEMES INCLUDED:  everforest ("set background=dark")
    -- LIGHT THEMES INCLUDED: everforest ("set background=light")
    "neanias/everforest-nvim",
    name = "everforest-theme",
    lazy = false,
    priority = 800,
    config = function()
      require("everforest").setup({
        background = "soft",
      })
    end,
  },
  {
    -- DARK THEMES INCLUDED:  catppuccin/catppuccin-mocha, catppuccin-frappe, catppuccin-macchiato
    -- LIGHT THEMES INCLUDED: catppuccin-latte
    "catppuccin/nvim",
    name = "catppuccin-theme",
    lazy = false,
    priority = 700,
  },
  {
    -- DARK THEMES INCLUDED:  melange ("set background=dark")
    -- LIGHT THEMES INCLUDED: melange ("set background=light")
    "savq/melange-nvim",
    name = "melange-theme",
    lazy = false,
    priority = 600,
  },
}