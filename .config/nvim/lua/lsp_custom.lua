local out = {}

local function filter(arr, fn)
  if type(arr) ~= 'table' then
    return arr
  end

  local filtered = {}
  for k, v in pairs(arr) do
    if fn(v, k, arr) then
      table.insert(filtered, v)
    end
  end

  return filtered
end

local function filterReactDTS(value)
  return string.match(value.filename, '%.d.ts') == nil
end

local function on_list(options)
  -- https://github.com/typescript-language-server/typescript-language-server/issues/216
  local items = options.items
  if #items > 1 then
    items = filter(items, filterReactDTS)
  end

  vim.fn.setqflist({}, ' ', { title = options.title, items = items, context = options.context })
  vim.api.nvim_command('cfirst')
end

out.definition = function()
  vim.lsp.buf.definition({ on_list = on_list })
end

out.cd_project_root = function()
  local ok, workspace_folders_or_err = pcall(vim.lsp.buf.list_workspace_folders)
  if ok and #workspace_folders_or_err > 0 then
    vim.cmd('cd ' .. workspace_folders_or_err[1])
  else
    print('Can\'t find project\'s root directory')
  end
end

return out