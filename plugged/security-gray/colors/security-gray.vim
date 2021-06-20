" Created by #!z@nko...;

set background=dark

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="security-gray"
se cul

hi ColorColumn  cterm=NONE        ctermfg=195     ctermbg=195
hi Comment      cterm=NONE        ctermfg=60     ctermbg=NONE    " Comments
hi Constant     cterm=bold        ctermfg=172     ctermbg=None    " Any constant

hi Cursor       cterm=None        ctermfg=40       ctermbg=237    "  
hi CursorLine   cterm=None        ctermfg=198    ctermbg=none"236    " Color suggested function Inactive arguments
hi StatusLineNC cterm=None        ctermfg=40       ctermbg=237    " suggested active args(func)
hi CursorLineNr cterm=bold        ctermfg=198      ctermbg=None   " active current line number

hi DiffAdd      cterm=italic      ctermfg=196     ctermbg=None    " New lines that have just been added to the file
hi DiffChange   cterm=None        ctermfg=40      ctermbg=None    " Items Changed in Diff
hi DiffDelete   cterm=None        ctermfg=red     ctermbg=None    " Items Deleted in Diff
hi DiffText     cterm=NONE        ctermfg=16      ctermbg=203     " variable... Changed in Diff

hi Directory    cterm=bold        ctermfg=45      ctermbg=NONE    "
hi Error        cterm=NONE        ctermfg=238     ctermbg=6       "
hi ErrorMsg     cterm=NONE        ctermfg=160     ctermbg=NONE    "

hi FoldColumn   cterm=NONE        ctermfg=145     ctermbg=None    "

hi Folded       cterm=NONE        ctermfg=145     ctermbg=None    "

hi Function     cterm=bold        ctermfg=75      ctermbg=None    "

hi Identifier   cterm=NONE        ctermfg=79      ctermbg=NONE    " in nerdtree you can see(/ end of dir name)

hi MatchParen   cterm=None        ctermfg=188     ctermbg=238     " Match parentsis

hi NonText      cterm=NONE        ctermfg=6       ctermbg=NONE    " ~ in other line is not write

hi Normal       cterm=none        ctermfg=195     ctermbg=234     "  

hi PreProc      cterm=bold        ctermfg=87      ctermbg=NONE    " IDK but you can see in decorator python(mens @)

hi Search       cterm=italic      ctermfg=205     ctermbg=None    " Match Search with / 

hi Statement    cterm=bold        ctermfg=147       ctermbg=NONE    " statment

hi String       cterm=none        ctermfg=47      ctermbg=NONE    "

hi Special      cterm=NONE        ctermfg=204      ctermbg=None    " Spicial variable statment... in config.ini can see!!!

hi Type         cterm=NONE        ctermfg=45      ctermbg=NONE    " config file variables...

hi Visual       cterm=italic      ctermfg=37      ctermbg=NONE    " Visial mode 

hi LineNr       cterm=NONE        ctermfg=146     ctermbg=NONE    "174

hi VertSplit    cterm=NONE        ctermfg=3       ctermbg=234     " Nerdtree vertrical split
 
hi WarningMsg   cterm=NONE        ctermfg=52      ctermbg=NONE    "

hi IncSearch    cterm=NONE        ctermfg=9       ctermbg=red     "

hi Pmenu        cterm=none        ctermfg=249     ctermbg=none    "
hi PmenuSel     cterm=NONE        ctermfg=238     ctermbg=111     "
hi PmenuSbar    cterm=NONE        ctermfg=238     ctermbg=66      "
hi PmenuThumb   cterm=NONE        ctermfg=238     ctermbg=66      "

hi TabLineSel   cterm=NONE        ctermfg=9     ctermbg=None      "

hi Todo         cterm=NONE      ctermfg=17      ctermbg=178       " Todo message
hi Conceal      cterm=NONE      ctermfg=189      ctermbg=None    "

hi SpecialKey   cterm=NONE        ctermfg=9       ctermbg=NONE    " IDK
hi SpellBad     cterm=REVERSE     ctermfg=9      ctermbg=None     " IDK
hi SpellCap     cterm=REVERSE     ctermfg=9      ctermbg=2        " IDK
hi StatusLine   cterm=NONE        ctermfg=9      ctermbg=2        "


hi! link diffAdded       DiffAdd
hi! link diffRemoved     DiffDelete
hi! link diffChanged     DiffChange
hi! link Title           Normal
hi! link MoreMsg         Normal
hi! link Question        DiffChange
hi! link TabLine         StatusLineNC
hi! link TabLineFill     StatusLineNC
hi! link VimHiGroup      VimGroup


" PYTHON SECTION
"hi pythonAsync            ctermfg=141 ctermbg=None
"hi pythonBuiltin          ctermfg=141
"hi pythonConditional      ctermfg=141
"hi pythonDecorator        ctermfg=214
"hi pythonDecoratorName    ctermfg=214
"hi pythonException        ctermfg=197
"hi pythonExceptions       ctermfg=197
"hi pythonFunction         ctermfg=81
"hi pythonInclude          ctermfg=213
"hi pythonNumber           ctermfg=208
"hi pythonOperator         ctermfg=207
"hi pythonString           ctermfg=122
"hi pythonStatement        ctermfg=141
"hi pythonQuotes           ctermfg=116


hi NERDTreeDir guifg=#5f7e97 ctermfg=45 gui=NONE cterm=NONE
hi NERDTreeOpenable guifg=#ff5874 ctermfg=204 gui=NONE cterm=NONE
hi NERDTreeClosable guifg=#ecc48d ctermfg=222 gui=NONE cterm=NONE
hi NERDTreeHelp guifg=#444444 ctermfg=249 gui=italic cterm=italic
hi NERDTreeUp cterm=None ctermfg=168 ctermbg=NONE
hi NERDTreeDirSlash ctermfg=6 ctermbg=NONE
hi NERDTreeFile ctermfg=249 ctermbg=NONE cterm=NONE
let g:NERDTreeDirArrowExpandable = ''


