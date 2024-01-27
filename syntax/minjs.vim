" https://vim.fandom.com/wiki/Fix_syntax_highlighting
syn sync fromstart

syn cluster jsAll contains=jsBlock,jsFnName,jsClassName,jsComment,jsCommentLine
syn region jsBlock matchgroup=jsBraces start=/{/ end=/}/ contains=@jsAll
syntax match jsClassAsyncFn /^\s*async\zs\s*\w\+\ze\s*(.*)\s*{/ contained containedin=jsBlock 
syntax match jsClassFn /^\s*\zs\s*\w\+\s*(.*)\ze\s*{/ contained containedin=jsBlock 
syntax match jsClassArrowFn /\<\K\k*\ze\s*=\s*(.*)\s*=>/ contained containedin=jsBlock 
syntax match jsObjectComputedPropArrow /\<\K\k*\ze\s*:\s*(.*)\s*=>/ contained containedin=jsBlock 
syntax match jsObjectComputedPropArrow /\<\K\k*\ze\s*:\s*async\s*(.*)\s*=>/ contained containedin=jsBlock 
syntax match jsObjectComputedPropExpr  /\<\K\k*\ze\s*:\s*function\s*(.*)\s*/ contained containedin=jsBlock 
syntax match jsIf /^\s*if\s\ze/ contained containedin=jsBlock
syntax match jsFor /^\s*for\s\ze/ contained containedin=jsBlock
syntax region jsFnArgs matchgroup=jsFnParens start=/(/ end=/)/ contained containedin=jsClassFn 

syn match jsFnName /function\zs\s\+\w\+\ze/
syn match jsClassName /\vclass\s*\zs\w+\ze\s+\{/

syn region jsComment start="/\*"  end="\*/" contains=@jsAll
syn match jsCommentLine "\/\/.*" contains=@jsAll

