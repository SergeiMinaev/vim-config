" https://vim.fandom.com/wiki/Fix_syntax_highlighting
syn sync fromstart

syn match commonFuncName /\vfn\s*\zs\w+\ze\s*\(/
syn match commonFuncName /\vfunction\s*\zs\w+\ze\s*\(/
syn match commonClassName /\vclass\s*\zs\w+\ze\s*/
syn region commoncomment  start="//" end="$"
syn region commoncomment  start="#" end="$"
syn region commoncomment  start="\"" end="$"

