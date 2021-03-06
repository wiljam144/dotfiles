vim.api.nvim_set_var("dashboard_default_executive", "fzf")

vim.api.nvim_set_var("dashboard_custom_shortcut",
    {last_session = "SPC s l",
     find_history = "SPC f h",
     find_file    = "SPC f f",
     new_file     = "SPC c n",
     change_colorscheme = "SPC t c",
     find_word    = "SPC f a",
     book_marks   = "SPC f b"})

vim.api.nvim_set_var("dashboard_custom_header",
  {"",
   "",
   "                .                                            .             ",
   "     *   .                  .              .        .   *          .       ",
   ".         .                     .       .           .      .        .      ",
   "        o                             .                   .                ",
   "         .              .                  .           .                   ",
   "          0     .                                                          ",
   "                 .          .                 ,                ,    ,      ",
   " .          \\          .                         .                         ",
   "      .      \\   ,                                                         ",
   "   .          o     .                 .                   .            .   ",
   "     .         \\                 ,             .                .          ",
   "               #\\##\\#      .                              .        .       ",
   "             #  #O##\\###                .                        .         ",
   "   .        #*#  #\\##\\###                       .                     ,    ",
   "        .   ##*#  #\\##\\##               .                     .            ",
   "      .      ##*#  #o##\\#         .                             ,       .  ",
   "          .     *#  #\\#     .                    .             .          ,",
   "                      \\          .                         .               ",
   "____^/\\___^--____/\\____O______________/\\/\\---/\\___________---______________",
   "   /\\^   ^  ^    ^                  ^^ ^  \\ ^          ^       ---         ",
   "         --           -            --  -      -         ---  __       ^    ",
   "   --  __                      ___--  ^  ^                         --  __  ",
   "",
   ""})
