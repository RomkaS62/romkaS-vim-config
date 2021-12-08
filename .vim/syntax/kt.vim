if exists("b:current_syntax")
	finish
endif

syn sync fromstart

syn match KtIdentifier /[a-zA-Z_][a-zA-Z_0-9]*/
hi link KtInteger Identifier

syn keyword KtBuiltInType Byte Short Int Long Boolean String Array List ArrayList Queue SynchronisedQueue
hi link KtBuiltInType Type

syn keyword KtConditional if else when
hi link KtConditional Conditional

syn keyword KtExcpetion try catch
hi link KtExcpetion Exception

syn keyword KtKeyword fun get set this super
hi link KtKeyword Keyword

syn keyword KtStatement return break continue
hi link KtStatement Statement

syn keyword KtOperator as is in shr shl ushr and or xor
syn match KtSymbolicOperator /?\.\|?\|\.\|++\|--\|->\|-\|\*\|>=\|<=\|>\|<\|==\|=\|!=\|::\|:/
hi link KtOperator Operator
hi link KtSymbolicOperator Operator

syn keyword KtRepeat for while do
hi link KtRepeat Repeat

syn keyword KtStorageClass override fun lateinit private inteternal protected public val var inline infix const
hi link KtStorageClass StorageClass

syn keyword KtType class interface enum annotation companion object
hi link KtType Structure

syn match KtAnnotation /@[A-Za-z_][a-zA-Z0-9_]*/
hi link KtAnnotation PreProc

syn match KtFQType /\([a-zA-Z_0-9]\+\.\)*\([a-zA-Z_0-9]\+\|\*\)\s*$/ contained containedin=KtImport,KtPackage
syn region KtImport start="import"rs=e+1 end="$"
syn region KtPackage start="package"rs=e+1 end="$"
hi link KtImport Include
hi link KtImportClass Type

syn region KtPackage start="package" end="$" contains=KtFQType
hi link KtPackage Include

syn keyword KtConstant null true false
hi link KtConstant Constant

syn match KtInteger /\(0x\|0\)\=[0-9]\+/
hi link KtInteger Number

syn match KtFloat /[0-9]\+\(\.[0-9]\+\)\=/
hi link KtFloat Number

syn match KtStringEscape /\\t\|\\n\|\\e/ contained
hi link KtStringEscape SpecialChar

syn region KtString start="\"" end="\"" contains=KtStringEscape oneline
hi link KtString String

syn region KtOneLineComment start="//" end="$"
syn region KtMultiLineComment start="/\*" end="\*/"
hi link KtMultiLineComment KtComment
hi link KtOneLineComment KtComment
hi link KtComment Comment

let b:current_syntax = "kt"
