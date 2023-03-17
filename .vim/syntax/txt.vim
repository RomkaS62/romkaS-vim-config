syn include @SH syntax/sh.vim
syn region TxtEmbeddedSH keepend start=/^```sh$/ end=/^```$/ contains=@SH
unlet b:current_syntax

syn include @CPP syntax/cpp.vim
syn region TxtEmbeddedCpp keepend start=/^```C++$/ end=/^```$/ contains=@CPP
unlet b:current_syntax

syn include @C syntax/c.vim
syn region TxtEmbeddedC keepend start=/^```C$/ end=/^```$/ contains=@C
unlet b:current_syntax

syn include @BASH syntax/bash.vim
syn region TxtEmbeddedBASH keepend start=/^```bash$/ end=/^```$/ contains=@BASH
unlet b:current_syntax

let b:current_syntax = 'txt'
