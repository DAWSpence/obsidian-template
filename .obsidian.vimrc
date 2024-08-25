
"==GENERAL==
" Yank to system clipboard
set clipboard=unnamed
unmap <Space>

"==REMAPS==
nmap j gj
nmap k gk
" I like using H and L for beginning/end of line
nmap H ^
nmap L $
" Quickly remove search highlights
nmap <F9> :nohl


"==EXMAPS==
" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back

exmap forward obcommand app:go-forward
nmap <C-i> :forward

exmap strike obcommand editor:toggle-strikethrough
vmap <Space>st :strike

exmap light obcommand editor:toggle-highlight
vmap <Space>sl :light

exmap block obcommand editor:insert-codeblock
nmap <Space>cb :block

exmap line obcommand editor:insert-horizontal-rule
nmap <Space>hr :line

exmap tag obcommand editor:insert-tag
nmap <Space>ti :tag









exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_backticks surround ` `
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }

" NOTE: must use 'map' and not 'nmap'
map [[ :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map s` :surround_backticks
map sb :surround_brackets
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s[ :surround_square_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets