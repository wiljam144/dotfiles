(vim.api.nvim_set_var "lightline" 
  {"colorscheme" "spaceduck"
   "separator" {"left" "" "right" ""}
   "subseparator" {"left" "" "right" ""}
   "active" {
      "left" [["mode" "paste"] ["readonly" "filename" "gitbranch" "modified"]]}})