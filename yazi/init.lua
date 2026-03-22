-- -------------------------------------------------
-- Size and modifies time in linemode
-- -------------------------------------------------
function Linemode:size_and_mtime()
  local size = self._file:size()
  local time = math.floor(self._file.cha.mtime or 0)

  if time == 0 then
    time = ""
  elseif os.date("%Y", time) == os.date("%Y") then
    time = os.date("%b %d", time)
  else
    time = os.date("%b --", time)
  end

  return string.format("%s %s", size and ya.readable_size(size) or "", time)
end

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
  require("toggle-pane"):entry("min-parent")
end
-- toggle-pane for yazi nvim
if os.getenv("YAZI") then
  require("toggle-pane"):entry("min-parent")
end
