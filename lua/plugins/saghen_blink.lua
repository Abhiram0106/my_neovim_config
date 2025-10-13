return {
  'saghen/blink.cmp',
  dependencies = { 
	  -- optional: provides snippets for the snippet source
	  -- 'rafamadriz/friendly-snippets'

	  'folke/lazydev.nvim',
  },

  -- use a release tag to download pre-built binaries
  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    -- For an understanding of why the 'default' preset is recommended,
    -- you will need to read `:help ins-completion`
    -- No, but seriously. Please read `:help ins-completion`, it is really good!
    keymap = { preset = 'default' },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono'
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = { 
	    documentation = { auto_show = false }
            -- Optionally, set `auto_show = true` to show the documentation after a delay.
	    -- documentation = { auto_show = true, auto_show_delay_ms = 500 },
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
      providers = {
          lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
      },
    },

    -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = { implementation = "prefer_rust_with_warning" },

    -- Shows a signature help window while you type arguments for a function
    signature = { enabled = true },
  },
  opts_extend = { "sources.default" },
}
