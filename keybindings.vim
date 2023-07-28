 " jump up
nmap <C-q> :execute (line('.') < 20 ? '1': '-20')<CR>
" jump down
nmap <C-a> :+20<CR>
" toggle transparent background
nmap <C-k> :call Toggle_transparent_background()<CR>
" toggle nerdtree
nmap <C-l> :NvimTreeToggle<CR>                         
" move to left panel
nmap <C-Left> :wincmd h<CR>                            
" move to right panel
nmap <C-Right> :wincmd l<CR>                           
" move to up panel
nmap <C-Up> :wincmd k<CR>                              
" move to down panel
nmap <C-Down> :wincmd j<CR>                           
" horizontal split
nmap <C-s> :split <CR>                                 
" vertical split
nmap <C-v> :vsplit <CR>                                
" undo
nmap <C-z> :u <CR>                                     
" replace
nmap <C-r> :%s/r1/r2/g                                 
" search
nmap <C-f> /                                           

