require("relative-motions"):setup({ 
  show_numbers="relative_absolute", 
  show_motion = true, 
  enter_mode ="cache_or_first" 
})

-- Preserve Yazi's normal status bar renderer
local original_status_redraw = Status.redraw

require("mobile-auto-layout"):setup({
	-- your options, if any
})

-- mobile-auto-layout replaces Status.redraw().
-- Restore it so Yaziline can work normally.
Status.redraw = original_status_redraw

require("full-border"):setup {
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}

require("git"):setup {
	-- Order of status signs showing in the linemode
	order = 1500,
}


-- require("mobile-auto-layout"):setup {
-- 	threshold = 90,      -- columns; below this the terminal counts as phone
-- 	parent_max = 30,     -- parent column width cap
-- 	current_max = 30,    -- file list width cap
-- 	min_width = 10,      -- floor for fit-to-content columns
-- 	reading_frac = 0.10, -- phone reading mode: file list sliver fraction
-- 	padding = 9,         -- icon, sign and borders added on top of the longest name
-- 	previewers = { "vscode-git-gutter", "code" }, -- previewers watched for scrolling
-- }



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
