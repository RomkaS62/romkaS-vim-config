if exists("b:current_syntax")
	finish
endif

syn sync fromstart

syn match KtIdentifier /[a-zA-Z_][a-zA-Z_0-9]*/

syn match KtKosherContantName /\<[A-Z_][A-Z0-9_]*\>/
hi link KtKosherContantName Constant

syn keyword KtConditional if else when
hi link KtConditional Conditional

syn keyword KtExcpetion try catch finally throw
hi link KtExcpetion Exception

syn keyword KtKeyword get set in out
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

syn keyword KtStorageClass override fun lateinit private inteternal protected public val var inline infix operator const abstract
hi link KtStorageClass StorageClass

syn keyword KtType class interface enum annotation companion object fun inner
hi link KtType Structure

syn match KtAnnotation /@[A-Za-z_][a-zA-Z0-9_]*/
hi link KtAnnotation PreProc

syn keyword KtImport import package
hi link KtImport Include

syn keyword KtConstant null true false
hi link KtConstant Constant

syn match KtFloat /\<[0-9]\+\(\.[0-9]\+\)\=\>/
syn match KtInteger /\<\(0x[0-9a-fA-F]\+\|[0-9]\+\|0[0-7]\+\)\(L\)\=\>/
hi link KtFloat Number
hi link KtInteger Number

syn match KtStringEscape /\\t\|\\n\|\\e/ contained
syn region KtStringTemplateBlock start="\${" end="}" contained
syn match KtStringTemplateParameter /\$[a-zA-Z_][a-zA-Z_0-9]\+/ contained
syn region KtString start="\"" skip="\\\"" end="\"" oneline contains=KtStringTemplateBlock,KtStringTemplateParameter,KtStringEscape
hi link KtString String
hi link KtStringTemplateParameter Special
hi link KtStringTemplateBlock Special
hi link KtStringEscape SpecialFChar

syn match ktChar /'\(\\[tnr\\\\]\|.\)'/
hi link ktChar Character

syn region KtOneLineComment start="//" end="$"
syn region KtMultiLineComment start="/\*" end="\*/"
hi link KtMultiLineComment KtComment
hi link KtOneLineComment KtComment
hi link KtComment Comment

syn keyword KtStandardFunctions all also any apply arrayOf chunked indices let listOf map reduce reversed run synchronized toByte toInt toLong toString with zip
hi link KtStandardFunctions Function

syn keyword KtBuiltInType Byte Short Int Long Boolean
hi link KtBuiltInType Type

syn keyword KtStandardTypes Any Array ArrayList BigInteger ByteArray CharSequence Exception File InputStream IntArray Iterable LinkedList List LongArray MutableList Nothing OutputStream PrintStream Queue Runnable String StringBuilder SynchronizedQueue Unit string IllegalArgumentException NullPointerException UUID Throwable
hi link KtStandardTypes Type

syn keyword KtAndroidTypes ActivityManager AlertDialog AppCompatActivity Application BluetoothAdapter BluetoothDevice BluetoothManager BluetoothSocket BroadcastReceiver Bundle Button Context DataSetObserver Dialog DialogFragment EditText Editable Executor Executors Handler Intent IntentFilter LayoutInflater ListAdapter ListView LiveData Looper MenuItem Message MutableLiveData R RadioButton RadioGroup RecyclerView Service TextView TextWatcher View ViewGroup ViewModel ViewModelProvider
hi link KtAndroidTypes Type

syn region KtBlock start="{" end="}" contains=ALL fold
hi link KtBlock Delimiter

syn region KtParen start="(" end=")" contains=ALL
hi link KtParen Delimiter

let b:current_syntax = "kt"
