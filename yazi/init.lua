-- -------------------------------------------------
-- Modified date in linemode
-- -------------------------------------------------
function Linemode:custom_linemode()
  -- symlink
  local h = self._file
  local symlink = ""

  if h.link_to then
    symlink = " -> " .. tostring(h.link_to)
    if #symlink > 10 then
      symlink = symlink:sub(1, 7) .. "..."
    end
  end

  -- modified time
  local time = math.floor(self._file.cha.mtime or 0)

  if os.date("%Y", time) == os.date("%Y") then
    time = os.date("%d %b", time)
  else
    time = os.date("-- ---", time)
  end

  local line = symlink .. time
  if #line > 25 then
    line = line:sub(1, 24) .. "..."
  end

  return line
end

-- -------------------------------------------------
-- Cross-instance yank ability
-- -------------------------------------------------
require("session"):setup({ sync_yanked = true })

-- -------------------------------------------------
-- Plugins setup
-- -------------------------------------------------
-- toggle-pane for yazi nvim
if os.getenv("NVIM") then
  require("toggle-pane"):entry("min-parent")
end

require("zoxide"):setup({ update_db = true })
require("folder-rules"):setup()
require("full-border"):setup()
require("recycle-bin"):setup()

require("augment-command"):setup({
  smart_enter = true,
  smart_paste = true,
  smart_tab_create = true,
  smart_tab_switch = true,
  confirm_on_quit = true,
  open_file_after_creation = true,
  enter_directory_after_creation = true,
  smooth_scrolling = true,
  wraparound_file_navigation = false,
})

-- yatline
require("yatline"):setup({
  section_separator = { open = "", close = "" },
  part_separator = { open = "", close = "" },
  inverse_separator = { open = "", close = "" },

  style_a = {
    bg = "#24273a",
    fg = "#cad3f5",
    bg_mode = {
      -- normal = "reset",
      select = "reset",
      un_set = "reset",
    },
  },
  style_b = { bg = "reset", fg = "#a5adcb" },
  style_c = { bg = "reset", fg = "#cad3f5" },

  permissions_t_fg = "#a6da95",
  permissions_r_fg = "#eed49f",
  permissions_w_fg = "#ed8796",
  permissions_x_fg = "#8aadf4",
  permissions_s_fg = "#cad3f5",

  selected = { icon = "󰻭", fg = "#eed49f" },
  copied = { icon = "", fg = "#a6da95" },
  cut = { icon = "", fg = "#ed8796" },
  files = { icon = "", fg = "#8aadf4" },
  filtereds = { icon = "", fg = "#b7bdf8" },

  total = { icon = "󰮍", fg = "#eed49f" },
  success = { icon = "", fg = "#a6da95" },
  failed = { icon = "", fg = "#ed8796" },

  tab_width = 0,
  display_status_line = false,
  status_line = {},

  header_line = {
    left = {
      section_a = {
        { type = "line", custom = false, name = "tabs" },
      },
      section_b = {
        {
          type = "string",
          custom = false,
          name = "hovered_name",
          params = { true, 24, 4, true },
        },
      },
      section_c = {
        { type = "string", custom = false, name = "search_query" },
        { type = "string", custom = false, name = "filter_query" },
      },
    },

    right = {
      section_a = {
        { type = "string", custom = false, name = "cursor_position" },
      },
      section_b = {
        { type = "coloreds", custom = false, name = "permissions" },
      },
      section_c = {
        {
          type = "coloreds",
          custom = false,
          name = "count",
          params = { false, true },
        },
        {
          type = "coloreds",
          custom = false,
          name = "task_states",
          params = { true },
        },
      },
    },
  },
})
