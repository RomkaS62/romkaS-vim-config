if exists("b:current_syntax")
	finish
endif

syn sync fromstart

syn match KtIdentifier /[a-zA-Z_][a-zA-Z_0-9]*/
hi link KtInteger Identifier

syn keyword KtConditional if else when
hi link KtConditional Conditional

syn keyword KtExcpetion try catch finally throw
hi link KtExcpetion Exception

syn keyword KtKeyword get set
hi link KtKeyword Keyword

syn keyword KtStatement return break continue
hi link KtStatement Statement

syn keyword KtPredefinedIdentifiers this it super
hi link KtPredefinedIdentifiers Identifier

syn keyword KtOperator as is in shr shl ushr and or xor
syn match KtSymbolicOperator /?\.\|?\|\.\|++\|--\|->\|-\|\*\|>=\|<=\|>\|<\|==\|=\|!=\|::\|:/
hi link KtOperator Operator
hi link KtSymbolicOperator Operator

syn keyword KtRepeat for while do
hi link KtRepeat Repeat

syn region KtFunctionDefinition start="fun" end="[a-zA-Z_][a-zA-Z0-9_]*"
hi link KtFunctionDefinition Function

syn keyword KtStorageClass override fun lateinit private inteternal protected public val var inline infix operator const
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

syn match KtFloat /\<[0-9]\+\(\.[0-9]\+\)\=\>/
hi link KtFloat Number

syn match KtInteger /\<\(0x[0-9a-fA-F]\+\|[0-9]\+\|0[0-7]\+\)\(L\)\=\>/
hi link KtInteger Number

syn match KtStringEscape /\\t\|\\n\|\\e/ contained
syn region KtStringTemplateBlock start="\${" end="}" contained
syn match KtStringTemplateParameter /\$[a-zA-Z_][a-zA-Z_0-9]\+/ contained
syn region KtString start="\"" skip="\\\"" end="\"" oneline contains=KtStringTemplateBlock,KtStringTemplateParameter,KtStringEscape
hi link KtString String
hi link KtStringTemplateParameter Special
hi link KtStringTemplateBlock Special
hi link KtStringEscape SpecialChar

syn region KtOneLineComment start="//" end="$"
syn region KtMultiLineComment start="/\*" end="\*/"
hi link KtMultiLineComment KtComment
hi link KtOneLineComment KtComment
hi link KtComment Comment

syn keyword KtStandardFunctions also apply indices let reversed run toByte toInt toLong toString with zip
hi link KtStandardFunctions Function

syn keyword KtBuiltInType Byte Short Int Long Boolean
hi link KtBuiltInType Type

syn keyword KtStandardTypes String string Runnable List ArrayList BigInteger PrintStream InputStream OutputStream File LinkedList Queue SynchronizedQueue MutableList Exception
hi link KtStandardTypes Type

syn region KtBlock start="{" end="}" contains=ALL
hi link KtBlock Delimiter

syn region KtParen start="(" end=")" contains=ALL
hi link KtParen Delimiter

syn match KtKosherContantName /\<[A-Z_][A-Z0-9_]\+\>/
hi link KtKosherContantName Constant

let b:current_syntax = "kt"
