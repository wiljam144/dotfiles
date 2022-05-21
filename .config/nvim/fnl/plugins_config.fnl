; macro to create mixed tables
(macro sparse [...]
  (let [args [...]
        t {}]
    (for [i 1 (length args) 2]
      (let [key (. args i)  val (. args (+ i 1))]
       (if (= key '&i)
        (table.insert t val)
        (tset t key val))))
    t))

(local treesitter_parsers ["fennel" "go" "python" "cpp" "lua"])

(local nvim_tree (require "nvim-tree"))
(nvim_tree.setup
  {"renderer" {"indent_markers" {"enable" true}}})

(local scrollbar_handler (require "scrollbar.handlers.search"))
(scrollbar_handler.setup)

(local indent_blankline (require "indent_blankline"))
(indent_blankline.setup)

(local scrollbar (require "scrollbar"))
(scrollbar.setup
  {"handlers" {"diagnostic" true "search" true}})

(local range_highlight (require "range-highlight"))
(range_highlight.setup)

(local colorizer (require "colorizer"))
(colorizer.setup)
