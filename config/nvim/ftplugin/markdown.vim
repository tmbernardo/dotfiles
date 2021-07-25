setlocal textwidth=0 wrapmargin=0 wrap spell
let g:markdown_fenced_languages = ['rust', 'javascript', 'js=javascript', 'json=javascript']
autocmd BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/
