" https://vim.fandom.com/wiki/Fix_syntax_highlighting
syn sync fromstart

syn cluster cssAll contains=cssSelector
syn match cssSelector /.\+\ze\s*{/
