return {
	{
		"nvim-tree/nvim-web-devicons",
		-- Ensure other plugins that use devicons, like neo-tree, load first
		init = function()
			require("nvim-web-devicons").setup({
				override_by_filename = {
					["animation.conf"] = {
						icon = "",
						color = "#458688",
						name = "Hyprland",
					},
					["autostart.conf"] = {
						icon = "",
						color = "#458688",
						name = "Hyprland",
					},
					["inoutvar.conf"] = {
						icon = "",
						color = "#458688",
						name = "Hyprland",
					},
					["keybinds.conf"] = {
						icon = "",
						color = "#458688",
						name = "Hyprland",
					},
					["rules.conf"] = {
						icon = "",
						color = "#458688",
						name = "Hyprland",
					},
					["style.conf"] = {
						icon = "",
						color = "#458688",
						name = "Hyprland",
					},
					["hyprland.conf"] = {
						icon = "",
						color = "#458688",
						name = "Hyprland",
					},
				},
			})
		end,
	},

}
