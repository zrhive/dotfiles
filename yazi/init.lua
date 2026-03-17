-- -------------------------------------------------
-- Cross-instance yank ability
-- -------------------------------------------------
require("session"):setup({
	sync_yanked = true,
})

-- -------------------------------------------------
-- Show symlink in status bar
-- -------------------------------------------------
Status:children_add(function(self)
	local h = self._current.hovered
	if h and h.link_to then
		return " -> " .. tostring(h.link_to)
	else
		return ""
	end
end, 3300, Status.LEFT)

-- -------------------------------------------------
-- Plugins setup
-- -------------------------------------------------
require("folder-rules"):setup()
require("recycle-bin"):setup()
require("full-border"):setup({ type = ui.Border.ROUNDED })
require("smart-enter"):setup({ open_multi = true })

-- toggle-pane for yazi nvim
if os.getenv("NVIM") then
	require("toggle-pane"):entry("min-preview")
end
