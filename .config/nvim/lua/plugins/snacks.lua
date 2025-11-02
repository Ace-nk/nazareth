return {
   {
      "folke/snacks.nvim",
      priority = 1000,
      lazy = false,
      ---@type snacks.Config
      opts = {
         -- your configuration comes here
         -- or leave it empty to use the default settings
         -- refer to the configuration section below
         bigfile = { enabled = true },
         dashboard = {
            enabled = true,
            preset = {
               keys = {
                  { icon = " ", key = "f", desc = "Find File", action = ":Telescope find_files" },
                  { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                  { icon = " ", key = "g", desc = "Find Text", action = ":Telescope live_grep" },
                  { icon = " ", key = "r", desc = "Recent Files", action = ":Telescope oldfiles" },
                  { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                  { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                  { icon = "󰚰", key = "u", desc = "Update", action = ":Lazy update", enabled = package.loaded.lazy ~= nil },
                  { icon = "", key = "c", desc = "Config", action = ":Neotree dir=~/.config/nvim", enabled = package.loaded.lazy ~= nil },
                  { icon = " ", key = "q", desc = "Quit", action = ":qa" },
               },
               header = [[



                                                                       
      ████ ██████           █████      ██                        
     ███████████             █████                                
     █████████ ███████████████████ ███   ███████████      
    █████████  ███    █████████████ █████ ██████████████      
   █████████ ██████████ █████████ █████ █████ ████ █████      
 ███████████ ███    ███ █████████ █████ █████ ████ █████     
██████  █████████████████████ ████ █████ █████ ████ ██████    



        ]],
            },
         },
         explorer = { enabled = false },
         indent = { enabled = true },
         input = { enabled = true },
         picker = { enabled = false },
         notifier = { enabled = true },
         quickfile = { enabled = true },
         scope = { enabled = true },
         scroll = { enabled = true },
         statuscolumn = { enabled = true },
         words = { enabled = true },
      },
   }
}
