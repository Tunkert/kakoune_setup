colorscheme dracula

# Set tab spacing to 2 spaces
hook global InsertChar \t %{ exec -draft -itersel h@ }
set global tabstop 4
set global indentwidth 4

# autocomplete with tab
hook global InsertCompletionShow .* %{
      map window insert <tab> <c-n>
        map window insert <s-tab> <c-p>
}

hook global InsertCompletionHide .* %{
      unmap window insert <tab> <c-n>
        unmap window insert <s-tab> <c-p>
}

# add line numbers
add-highlighter global/ number-lines

# remap jj to escape key
hook global InsertChar j %{ try %{
    exec -draft hH <a-k>jj<ret> d
      exec <esc>
}}

# Plugin manager
source "%val{config}/plugins/plug.kak/rc/plug.kak"

# emmet
plug "https://github.com/JJK96/kakoune-emmet.git"

# auto pairs
plug "https://github.com/alexherbo2/auto-pairs.kak.git"

# Enable 'auto-pairs' plugin for all filetypes
hook global WinCreate .* %{
        auto-pairs-enable
}

# kakoune snippets
plug "https://github.com/occivink/kakoune-snippets.git"
