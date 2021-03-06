" Vim syntax file
" Language:     OpenSCAD
" Maintainer:   Mike Anderson <hello@mrmikea.com>
" Last Changed: 2013 September 5


"syn keyword openscadFunctionDef function
syn keyword openscadFunctionDef function nextgroup=openscadFunction skipwhite skipempty
syn match openscadFunction /\<\h\w*\>/ contained display

"syn keyword openscadModuleDef module
syn keyword openscadModuleDef module nextgroup=openscadModule skipwhite skipempty
syn match openscadModule /\<\h\w*\>/ contained display

syn keyword openscadStatement echo assign
syn keyword openscadConditional if else
syn keyword openscadRepeat for intersection_for
syn keyword openscadInclude include use
syn keyword openscadCsgKeyword union difference intersection render intersection_for
syn keyword openscadTransform scale rotate translate mirror multmatrix color minkowski
syn keyword openscadPrimitive cube sphere cylinder polyhedron surface circle polygon
syn keyword openscadBoolean true false

syn match openscadSpecialVariable "\$[a-zA-Z]\+\>" display
syn match openscadModifier "^\s*[\*\!\#\%]" display

syn match openscadNumber "-\?\d*\.\?\d*" display

syn region openscadString start=/"/ skip=/\\"/ end=/"/

syn keyword openscadCommentTodo TODO FIXME XXX contained display
syn match openscadInlineComment ://.*$: contains=scadCommentTodo
syn region openscadBlockComment start=:/\*: end=:\*/: fold contains=openscadCommentTodo

syn region openscadBlock start="{" end="}" transparent fold
syn region openscadVector start="\[" end="\]" transparent fold

syn keyword openscadBuiltin abs acos asin atan atan2 ceil cos exp floor ln log
syn keyword openscadBuiltin lookup max min pow rands round sign sin sqrt tan
syn keyword openscadBuiltin str

let b:current_syntax = "openscad"

hi def link openscadFunctionDef         Structure
hi def link openscadFunction            Function
hi def link openscadModuleDef           Structure
hi def link openscadModule              Function
hi def link openscadBlockComment        Comment
hi def link openscadBoolean             Boolean
hi def link openscadBuiltin             Function
hi def link openscadConditional         Conditional
hi def link openscadCsgKeyword          Structure
hi def link openscadInclude             Include
hi def link openscadInlineComment       Comment
hi def link openscadModifier            Special
hi def link openscadStatement           Statement
hi def link openscadNumber              Number
hi def link openscadPrimitive           Type
hi def link openscadRepeat              Repeat
hi def link openscadSpecialVariable     Special
hi def link openscadString              String
hi def link openscadTransform           Statement
hi def link openscadCommentTodo         Todo
