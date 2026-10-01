require("relative-motions"):setup({ 
  show_numbers="relative_absolute", 
  show_motion = true, 
  enter_mode ="cache_or_first" 
})

require("full-border"):setup {
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}

require("git"):setup {
	-- Order of status signs showing in the linemode
	order = 1500,
}

require("yaziline"):setup({
	color = "#7aa2f7",
	secondary_color = "#3b4261",

	default_files_color = "darkgray",
	selected_files_color = "white",
	yanked_files_color = "green",
	cut_files_color = "red",

	separator_style = "empty",

	select_symbol = "",
	yank_symbol = "󰆐",

	filename_max_length = 24,
	filename_truncate_length = 6,
	filename_truncate_separator = "...",
})

function Status:position()
	return ui.Line({})
end
