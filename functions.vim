" Toggle transparent background
let t:is_transparent = 0                     
function! Toggle_transparent_background()                      
  if t:is_transparent == 0                   
    highlight LineNr ctermbg=NONE guibg=NONE
    hi! Normal ctermbg=NONE guibg=NONE
    hi! NonText ctermbg=NONE guibg=NONE
    let t:is_transparent = 1
  else
    "set background=dark
    hi Normal ctermbg=230 guibg=#151515
    hi NonText ctermbg=230 guibg=#151515
    let t:is_transparent = 0                        
  endif                    
endfunction             
