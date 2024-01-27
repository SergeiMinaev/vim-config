" https://vim.fandom.com/wiki/Fix_syntax_highlighting
syn sync fromstart

syn cluster rustAll contains=rustStructName,rustFuncName
syn match rustStructName /\vstruct\s*\zs\w+\ze\s+\{/
syn match rustStructName /\vimpl\s*\zs\w+\ze\s+\{/
syn match rustFuncName /\vfn\s*\zs\w+\ze\s*\(/
syn match rustFuncName /\vfn\s*\zs\w+\ze\s*\</
syn region rustCommentLine start="//" end="$"

