""
" Function to list all colorschemes
" :call DisplayColorSchemes(), also see:
" http://stackoverflow.com/questions/7331940/how-to-get-the-list-of-all-installed-color-schemes-in-vim
" http://vim.wikia.com/wiki/Example_vimrc
" http://learnvimscriptthehardway.stevelosh.com/chapters/23.html
"
function! DisplayColorSchemes()
   let currDir = getcwd()
   exec "cd $VIMRUNTIME/colors"
   for myCol in split(glob("*"), '\n')
      if myCol =~ '\.vim'
         let mycol = substitute(myCol, '\.vim', '', '')
         exec "colorscheme " . mycol
         exec "redraw!"
         echo "colorscheme = ". myCol
         sleep 2
      endif
   endfor
   exec "cd " . currDir
endfunction

function! DisplayMyColorSchemes()
   let currDir = getcwd()
   exec "cd $HOME/.vim/colors"
   for myCol in split(glob("*"), '\n')
      if myCol =~ '\.vim'
         let mycol = substitute(myCol, '\.vim', '', '')
         exec "colorscheme " . mycol
         exec "redraw!"
         echo "colorscheme = ". myCol
         sleep 2
      endif
   endfor
   exec "cd " . currDir
endfunction

" Syntax Higlighting
" need to check for schemes later
"
syntax on

"Vim Color Resources
" http://vimcolors.com/
" Where is vim folder on Mac, see:
" http://stackoverflow.com/questions/9239107/where-is-vim-folder-in-mac-os-and-how-to-install-themes-in-gvim
"
colorscheme sunburst
"let g:molokai_original = 1
let g:rehash256 = 1

" Good start for vimrc
" http://vim.wikia.com/wiki/Example_vimrc
" https://github.com/Slava/vimrc/blob/master/.vimrc
"
set wildmenu
set wildmode=longest:full,full
set showcmd
set mouse=a
