
syn keyword pythonStatement False, None, True
syn keyword pythonStatement as assert break continue del exec global globals local
syn keyword pythonff lambda nonlocal pass print return with yield
syn keyword pythonConditional if elif else

syn keyword pythonRepeat  for while
syn keyword pythonException except finally raise try 
syn keyword pythonInclude import
syn keyword pythonAsync   async await
syn match pythonOperatorAssignment "\(=\|!\|:=\|%=\|*=\|\~=\|+=\|\-=\|//=\|@=\|>>=\|<<=\)"
syn match pythonOperatorLogical  "\( and \| not \| or \| in \| is \|<=\|<\|>\|>=\|==\|!=\|+\|*\|-\|%\)"
syn match method "\(\w.=\)\."


hi pythonff          ctermfg=176
hi pythonStatement   ctermfg=75         cterm=bold
hi pythonAsync       ctermfg=75         cterm=bold
hi pythonInclude     ctermfg=204        cterm=bold
hi pythonConditional ctermfg=176        cterm=bold
hi pythonStatement   ctermfg=75         cterm=bold
hi pythonFunction    ctermfg=111"153    cterm=bold
hi pythonOperatorAssignment ctermfg=204 cterm=bold
hi pythonOperatorLogical ctermfg=204    cterm=bold
hi pythonQuotes ctermfg=44              cterm=bold
hi pythonRepeat ctermfg=84              cterm=bold
hi method ctermfg=105  cterm=bold 



"syn match function_declaration "\(\n\|\s\)dief\s"
"syn match function_name "(?x)\n  \b ([[:alpha:]_]\w*) \b\n"
"syn region function_call start="(?x)\n  \b(?=\n    ([[:alpha:]_]\w*) \s* (\\()\n  )\n,"  end="(\\))"
"syn region function_arguments start="(\\()" end="(?=\\))(?!\\)\\s*\\()"
"syn match  builtin_functions "(?x)\n  (?<!\\.) \\b(\n    __import__ | abs | all | any | ascii | bin | breakpoint | callable\n    | chr | compile | copyright | credits |  delattr | dir | divmod\n    | enumerate | eval | exec | exit | filter | format | getattr\n    | globals | hasattr | hash | help | hex | id | input\n    | isinstance | issubclass | iter | len | license | locals | map\n    | max | memoryview | min | next | oct | open | ord |pow | print\n    | quit | range | reload | repr | reversed | round\n    | setattr | sorted | sum | vars | zip\n  )\\b\n"
"syn match magic_function_name "(?x)\n  \\b(\n    __(?:\n      abs | add | aenter | aexit | aiter | and | anext | await\n      | bool | call | ceil | cmp | coerce | complex | contains\n      | copy | deepcopy | del | delattr | delete | delitem\n      | delslice | dir | div | divmod | enter | eq | exit | float\n      | floor | floordiv | format | ge | get | getattr\n      | getattribute | getinitargs | getitem | getnewargs\n      |getslice | getstate | gt | hash | hex | iadd | iand | idiv\n      | ifloordiv | ilshift | imod | imul | index | init\n      | instancecheck |int | invert | ior | ipow | irshift | isub\n      | iter | itruediv | ixor | le | len | long | lshift | lt\n      | missing | mod | mul | ne | neg | new | next | nonzero | oct | or\n      | pos | pow | radd | rand | rdiv | rdivmod | reduce\n      | reduce_ex | repr | reversed | rfloordiv |rlshift | rmod\n      | rmul | ror | round | rpow | rrshift | rshift | rsub\n      | rtruediv | rxor | set | setattr | setitem | setslice\n      | setstate | sizeof | str | sub | subclasscheck | truediv\n      | trunc | unicode | xor | matmul | rmatmul | imatmul\n      | init_subclass | set_name |┆ fspath | bytes | prepare\n    )__\n  )\\b\n"

"syn match class_declaration "(?x)\n  \\s*(class)\\s+\n    (?=\n      [[:alpha:]_]\\w* \\s* (:|\\()\n    )\n"
"syn match class_name "(?x)\n  \\b ([[:alpha:]_]\\w*) \\b\n"
"syn region class_inheritance start="(\\()" end="(\\))"
"syn match class_kwarg "(?x)\n  \\b ([[:alpha:]_]\\w*) \\s*(=)(?!=)\n"
"syn match lambda_function_incomplete "\\blambda(?=\\s*[,)])"

