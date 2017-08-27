
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

hi Normal           guifg=#bcbcbc   guibg=#aa00aa
hi Comment          guifg=#efefef
hi CursorLine                       guibg=#aa00aa   gui=none
hi CursorColumn                     guibg=#aa00aa
hi ColorColumn                      guibg=#aa00aa
hi LineNr           guifg=#bcbcbc   guibg=#aa00aa
hi NonText          guifg=#808080
hi SpecialKey       guifg=#808080

hi Boolean          guifg=#ff00df
hi Character        guifg=#dfaf00
hi Number           guifg=#ff00df
hi String           guifg=#dfaf00
hi Conditional      guifg=#ffdf00                   gui=bold
hi Constant         guifg=#ff00df                   gui=bold
hi Cursor           guifg=#aa00aa   guibg=#aa00aa
hi Debug            guifg=#ffd7ff                   gui=bold
hi Define           guifg=#5fafff
hi Delimiter        guifg=#626262
hi DiffAdd                          guibg=#005f5f
hi DiffChange       guifg=#d7afaf   guibg=#3a3a3a
hi DiffDelete       guifg=#d70087   guibg=#aa00aa
hi DiffText                         guibg=#aa00aa   gui=italic,bold

hi Directory        guifg=#87d700                   gui=bold
hi Error            guifg=#dfdfff   guibg=#87005f
hi ErrorMsg         guifg=#ffafff                   gui=bold
hi Exception        guifg=#ffdf00                   gui=bold
hi Float            guifg=#ff00df
hi FoldColumn       guifg=#5f87af   guibg=#aa00aa
hi Folded           guifg=#5f87af   guibg=#aa00aa
hi Function         guifg=#87d700
hi Identifier       guifg=#87d700                   gui=none
hi Ignore           guifg=#808080   guibg=#aa00aa
hi IncSearch        guifg=#5fafff

hi Keyword          guifg=#ffdf00                   gui=bold
hi Label            guifg=#ffdf00                   gui=none
hi Macro            guifg=#5fafff                   gui=italic

hi MatchParen       guifg=#ff8700   guibg=#aa00aa   gui=bold
hi ModeMsg          guifg=#ffdf00
hi MoreMsg          guifg=#ffdf00
hi Operator         guifg=#ffdf00

" complete menu
hi Pmenu            guifg=#bcbcbc   guibg=#444444
hi PmenuSel         guifg=#bcbcbc   guibg=#005faf
hi PmenuSbar                        guibg=#aa00aa
hi PmenuThumb       guifg=#bcbcbc

hi PreCondit        guifg=#ffdf00                   gui=bold
hi PreProc          guifg=#5fafff
hi Question         guifg=#5fafff
hi Repeat           guifg=#ffdf00                   gui=bold
hi Search           guifg=#dadada   guibg=#5f8787

" marks column
hi SignColumn       guifg=#87d700   guibg=#262626
hi SpecialChar      guifg=#ff00df                   gui=bold
hi SpecialComment   guifg=#808080                   gui=bold
hi Special          guifg=#5fafff   guibg=#aa00aa   gui=italic
if has("spell")
    hi SpellBad     guisp=#FF0000   gui=undercurl
    hi SpellCap     guisp=#7070F0   gui=undercurl
    hi SpellLocal   guisp=#70F0F0   gui=undercurl
    hi SpellRare    guisp=#FFFFFF   gui=undercurl
endif
hi Statement        guifg=#ffdf00                   gui=bold
hi StatusLine       guifg=#444444   guibg=#dadada
hi StatusLineNC     guifg=#808080   guibg=#aa00aa
hi StorageClass     guifg=#87d700                   gui=italic
hi Structure        guifg=#5fafff
hi Tag              guifg=#ffdf00                   gui=italic
hi Title            guifg=#d75f00
hi Todo             guifg=#ffffff   guibg=#080808   gui=bold

hi Typedef          guifg=#87d700
hi Type             guifg=#87d700                   gui=none
hi Underlined       guifg=#808080                   gui=underline

hi VertSplit        guifg=#808080   guibg=#aa00aa   gui=bold
hi VisualNOS                        guibg=#444444
hi Visual                           guibg=#005faf
hi WarningMsg       guifg=#ffffff   guibg=#444444   gui=bold
hi WildMenu         guifg=#5fafff

"
" Support for 256-color terminal
"
if &t_Co > 255
    hi Normal           ctermfg=255  ctermbg=53
    hi CursorLine       ctermbg=53 cterm=none
    hi Boolean          ctermfg=255  ctermbg=53
    hi Character        ctermfg=255  ctermbg=53
    hi Number           ctermfg=255  ctermbg=53
    hi String           ctermfg=255  ctermbg=53
    hi Conditional      ctermfg=255              cterm=bold
    hi Constant         ctermfg=255              cterm=bold
    hi Cursor           ctermfg=255  ctermbg=53
    hi Debug            ctermfg=255              cterm=bold
    hi Define           ctermfg=255     
    hi Delimiter        ctermfg=255  ctermbg=53

    hi DiffAdd                      ctermbg=53
    hi DiffChange       ctermfg=255  ctermbg=53
    hi DiffDelete       ctermfg=255  ctermbg=53
    hi DiffText                     ctermbg=53  cterm=bold

    hi Directory        ctermfg=255              cterm=bold
    hi Error            ctermfg=255  ctermbg=53
    hi ErrorMsg         ctermfg=255              cterm=bold
    hi Exception        ctermfg=255              cterm=bold
    hi Float            ctermfg=255  ctermbg=53
    hi FoldColumn       ctermfg=255  ctermbg=53
    hi Folded           ctermfg=255  ctermbg=53
    hi Function         ctermfg=255 
    hi Identifier       ctermfg=255              cterm=none
    hi Ignore           ctermfg=255  ctermbg=53
    hi IncSearch        ctermfg=255 
    hi Keyword          ctermfg=255              cterm=bold
    hi Label            ctermfg=255              cterm=none
    hi Macro            ctermfg=255 ctermbg=53

    hi MatchParen       ctermfg=255  ctermbg=53  cterm=bold
    hi ModeMsg          ctermfg=255  ctermbg=53
    hi MoreMsg          ctermfg=255  ctermbg=53
    hi Operator         ctermfg=255  ctermbg=53

    " complete menu
    hi Pmenu            ctermfg=255  ctermbg=53
    hi PmenuSel         ctermfg=255  ctermbg=53
    hi PmenuSbar                    ctermbg=53
    hi PmenuThumb       ctermfg=255  ctermbg=53

    hi PreCondit        ctermfg=255              cterm=bold
    hi PreProc          ctermfg=255 ctermbg=53
    hi Question         ctermfg=255 ctermbg=53
    hi Repeat           ctermfg=255              cterm=bold
    hi Search           ctermfg=255  ctermbg=53

    " marks column
    hi SignColumn       ctermfg=255  ctermbg=53
    hi SpecialChar      ctermfg=255  ctermbg=53
    hi SpecialComment   ctermfg=255              cterm=bold
    hi Special          ctermfg=255  ctermbg=53

    hi Statement        ctermfg=255              cterm=bold
    hi StatusLine       ctermfg=255  ctermbg=53
    hi StatusLineNC     ctermfg=255  ctermbg=53
    hi StorageClass     ctermfg=255  ctermbg=53
    hi Structure        ctermfg=255 ctermbg=53
    hi Tag              ctermfg=255  ctermbg=53
    hi Title            ctermfg=255  ctermbg=53
    hi Todo             ctermfg=255  ctermbg=53 cterm=bold

    hi Typedef          ctermfg=255 
    hi Type             ctermfg=255  ctermbg=53 cterm=none
    hi Underlined       ctermfg=255  ctermbg=53 cterm=underline

    hi VertSplit        ctermfg=255  ctermbg=53 cterm=bold
    hi VisualNOS                    ctermbg=53
    hi Visual                       ctermbg=53
    hi WarningMsg       ctermfg=255  ctermbg=53 cterm=bold
    hi WildMenu         ctermfg=255 ctermbg=53

    hi Comment          ctermfg=255  ctermbg=53
    hi CursorColumn                 ctermbg=53
    hi ColorColumn                  ctermbg=53
    hi LineNr           ctermfg=255  ctermbg=53
    hi NonText          ctermfg=255  ctermbg=53
    hi SpecialKey       ctermfg=255  ctermbg=53
end
