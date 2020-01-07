let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/main.tex
badd +226 ~/.config/nvim/init.vim
badd +1 /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/help
badd +1 /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/main.bib
badd +1 /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/notes.md
badd +0 ./
argglobal
silent! argdel *
$argadd ./
edit /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/notes.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 19 + 21) / 43)
exe 'vert 1resize ' . ((&columns * 30 + 50) / 100)
exe '2resize ' . ((&lines * 19 + 21) / 43)
exe 'vert 2resize ' . ((&columns * 30 + 50) / 100)
exe 'vert 3resize ' . ((&columns * 69 + 50) / 100)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 015|
wincmd w
argglobal
if bufexists('/mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/main.bib') | buffer /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/main.bib | else | edit /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/main.bib | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 014|
wincmd w
argglobal
if bufexists('/mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/main.tex') | buffer /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/main.tex | else | edit /mnt/c/Users/ThinkPad/Documents/Schule/LaTeX_Hefte/template/main.tex | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=10
setlocal fen
let s:l = 53 - ((52 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 016|
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 19 + 21) / 43)
exe 'vert 1resize ' . ((&columns * 30 + 50) / 100)
exe '2resize ' . ((&lines * 19 + 21) / 43)
exe 'vert 2resize ' . ((&columns * 30 + 50) / 100)
exe 'vert 3resize ' . ((&columns * 69 + 50) / 100)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
