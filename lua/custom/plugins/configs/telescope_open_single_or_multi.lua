---Telescope action helper to open single or multiple files
---@param bufnr integer Telescope prompt buffer number
return {
  open_single_or_multi = function(bufnr)
    local actions = require 'telescope.actions'
    local actions_state = require 'telescope.actions.state'
    local single_selection = actions_state.get_selected_entry()
    local multi_selection = actions_state.get_current_picker(bufnr):get_multi_selection()
    if not vim.tbl_isempty(multi_selection) then
      actions.close(bufnr)
      for _, file in pairs(multi_selection) do
        if file.path ~= nil then
          vim.cmd(string.format('edit %s', file.path))
        end
      end
      vim.cmd(string.format('edit %s', single_selection.path))
    else
      actions.select_default(bufnr)
    end
  end,
}
