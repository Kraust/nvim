let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
set shortmess+=aoO
badd +1 term://~//306103:/home/kraust/.local/xonsh-env/xbin/xonsh
badd +1 term://~//306281:/home/kraust/.local/xonsh-env/xbin/xonsh
badd +1 term://~//306473:/home/kraust/.local/xonsh-env/xbin/xonsh
badd +1 term://~//306649:/home/kraust/.local/xonsh-env/xbin/xonsh
badd +1 term://~//306825:/home/kraust/.local/xonsh-env/xbin/xonsh
badd +1 term://~//307001:/home/kraust/.local/xonsh-env/xbin/xonsh
badd +1 notes/index.norg
badd +1 term://~//309413:/home/kraust/.local/xonsh-env/xbin/xonsh
badd +1 term://~//309589:/home/kraust/.local/xonsh-env/xbin/xonsh
badd +1 .config/nvim/session.vim
badd +1 .config/nvim/commit
argglobal
%argdel
edit term://~//306103:/home/kraust/.local/xonsh-env/xbin/xonsh
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
4wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
7wincmd h
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 1resize ' . ((&columns * 359 + 360) / 720)
exe '2resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 2resize ' . ((&columns * 360 + 360) / 720)
exe '3resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 3resize ' . ((&columns * 359 + 360) / 720)
exe '4resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 4resize ' . ((&columns * 360 + 360) / 720)
exe '5resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 5resize ' . ((&columns * 89 + 360) / 720)
exe '6resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 6resize ' . ((&columns * 89 + 360) / 720)
exe '7resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 7resize ' . ((&columns * 90 + 360) / 720)
exe '8resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 8resize ' . ((&columns * 89 + 360) / 720)
exe '9resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 9resize ' . ((&columns * 89 + 360) / 720)
exe '10resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 10resize ' . ((&columns * 89 + 360) / 720)
exe '11resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 11resize ' . ((&columns * 89 + 360) / 720)
exe '12resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 12resize ' . ((&columns * 89 + 360) / 720)
exe '13resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 13resize ' . ((&columns * 359 + 360) / 720)
exe '14resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 14resize ' . ((&columns * 360 + 360) / 720)
exe '15resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 15resize ' . ((&columns * 359 + 360) / 720)
exe '16resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 16resize ' . ((&columns * 360 + 360) / 720)
argglobal
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~//306281:/home/kraust/.local/xonsh-env/xbin/xonsh", ":p")) | buffer term://~//306281:/home/kraust/.local/xonsh-env/xbin/xonsh | else | edit term://~//306281:/home/kraust/.local/xonsh-env/xbin/xonsh | endif
if &buftype ==# 'terminal'
  silent file term://~//306281:/home/kraust/.local/xonsh-env/xbin/xonsh
endif
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~//309413:/home/kraust/.local/xonsh-env/xbin/xonsh", ":p")) | buffer term://~//309413:/home/kraust/.local/xonsh-env/xbin/xonsh | else | edit term://~//309413:/home/kraust/.local/xonsh-env/xbin/xonsh | endif
if &buftype ==# 'terminal'
  silent file term://~//309413:/home/kraust/.local/xonsh-env/xbin/xonsh
endif
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~//309589:/home/kraust/.local/xonsh-env/xbin/xonsh", ":p")) | buffer term://~//309589:/home/kraust/.local/xonsh-env/xbin/xonsh | else | edit term://~//309589:/home/kraust/.local/xonsh-env/xbin/xonsh | endif
if &buftype ==# 'terminal'
  silent file term://~//309589:/home/kraust/.local/xonsh-env/xbin/xonsh
endif
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("notes/index.norg", ":p")) | buffer notes/index.norg | else | edit notes/index.norg | endif
if &buftype ==# 'terminal'
  silent file notes/index.norg
endif
setlocal foldmethod=expr
setlocal foldexpr=v:lua.vim.treesitter.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=2
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 16 - ((15 * winheight(0) + 34) / 68)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 0
wincmd w
argglobal
enew
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
wincmd w
argglobal
enew
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
wincmd w
argglobal
enew
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
wincmd w
argglobal
enew
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
wincmd w
argglobal
enew
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
wincmd w
argglobal
enew
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
wincmd w
argglobal
enew
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
wincmd w
argglobal
if bufexists(fnamemodify("term://~//306473:/home/kraust/.local/xonsh-env/xbin/xonsh", ":p")) | buffer term://~//306473:/home/kraust/.local/xonsh-env/xbin/xonsh | else | edit term://~//306473:/home/kraust/.local/xonsh-env/xbin/xonsh | endif
if &buftype ==# 'terminal'
  silent file term://~//306473:/home/kraust/.local/xonsh-env/xbin/xonsh
endif
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~//306825:/home/kraust/.local/xonsh-env/xbin/xonsh", ":p")) | buffer term://~//306825:/home/kraust/.local/xonsh-env/xbin/xonsh | else | edit term://~//306825:/home/kraust/.local/xonsh-env/xbin/xonsh | endif
if &buftype ==# 'terminal'
  silent file term://~//306825:/home/kraust/.local/xonsh-env/xbin/xonsh
endif
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~//306649:/home/kraust/.local/xonsh-env/xbin/xonsh", ":p")) | buffer term://~//306649:/home/kraust/.local/xonsh-env/xbin/xonsh | else | edit term://~//306649:/home/kraust/.local/xonsh-env/xbin/xonsh | endif
if &buftype ==# 'terminal'
  silent file term://~//306649:/home/kraust/.local/xonsh-env/xbin/xonsh
endif
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("term://~//307001:/home/kraust/.local/xonsh-env/xbin/xonsh", ":p")) | buffer term://~//307001:/home/kraust/.local/xonsh-env/xbin/xonsh | else | edit term://~//307001:/home/kraust/.local/xonsh-env/xbin/xonsh | endif
if &buftype ==# 'terminal'
  silent file term://~//307001:/home/kraust/.local/xonsh-env/xbin/xonsh
endif
balt notes/index.norg
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
5wincmd w
exe '1resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 1resize ' . ((&columns * 359 + 360) / 720)
exe '2resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 2resize ' . ((&columns * 360 + 360) / 720)
exe '3resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 3resize ' . ((&columns * 359 + 360) / 720)
exe '4resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 4resize ' . ((&columns * 360 + 360) / 720)
exe '5resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 5resize ' . ((&columns * 89 + 360) / 720)
exe '6resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 6resize ' . ((&columns * 89 + 360) / 720)
exe '7resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 7resize ' . ((&columns * 90 + 360) / 720)
exe '8resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 8resize ' . ((&columns * 89 + 360) / 720)
exe '9resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 9resize ' . ((&columns * 89 + 360) / 720)
exe '10resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 10resize ' . ((&columns * 89 + 360) / 720)
exe '11resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 11resize ' . ((&columns * 89 + 360) / 720)
exe '12resize ' . ((&lines * 68 + 77) / 154)
exe 'vert 12resize ' . ((&columns * 89 + 360) / 720)
exe '13resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 13resize ' . ((&columns * 359 + 360) / 720)
exe '14resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 14resize ' . ((&columns * 360 + 360) / 720)
exe '15resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 15resize ' . ((&columns * 359 + 360) / 720)
exe '16resize ' . ((&lines * 20 + 77) / 154)
exe 'vert 16resize ' . ((&columns * 360 + 360) / 720)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
