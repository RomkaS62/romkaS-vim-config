syn match XxdBytes0x /0\x/
syn match XxdBytes1x /1\x/
syn match XxdBytes2x /2\x/
syn match XxdBytes3x /3\x/
syn match XxdBytes4x /4\x/
syn match XxdBytes5x /5\x/
syn match XxdBytes6x /6\x/
syn match XxdBytes7x /7\x/
syn match XxdBytes8x /8\x/
syn match XxdBytes9x /9\x/
syn match XxdBytesAx /a\x/
syn match XxdBytesBx /b\x/
syn match XxdBytesCx /c\x/
syn match XxdBytesDx /d\x/
syn match XxdBytesEx /e\x/
syn match XxdBytesFx /f\x/

hi XxdBytes0x guifg=#FF0000
hi XxdBytes1x guifg=#EE1100
hi XxdBytes2x guifg=#DD2200
hi XxdBytes3x guifg=#CC3300
hi XxdBytes4x guifg=#BB4400
hi XxdBytes5x guifg=#AA5500
hi XxdBytes6x guifg=#996600
hi XxdBytes7x guifg=#887700
hi XxdBytes8x guifg=#778800
hi XxdBytes9x guifg=#669900
hi XxdBytesAx guifg=#55AA00
hi XxdBytesBx guifg=#44BB00
hi XxdBytesCx guifg=#33CC00
hi XxdBytesDx guifg=#22DD00
hi XxdBytesEx guifg=#11EE00
hi XxdBytesFx guifg=#00FF00

syn match XxdASCIIUppercaseLetter /\c4\x\|5[0-9A]/
hi XxdASCIIUppercaseLetter guifg=#00FFFF

syn match XxdASCIILowercaseLetter /6\x\|7[0-9A]/
hi XxdASCIILowercaseLetter guifg=#00AAEE

syn match XxdASCIIWhiteSpace /\c09\|0A\|0D\|20/
hi XxdASCIIWhiteSpace guifg=#004499

syn match XxdASCIIPunctuation /\c2[1-F]/
hi XxdASCIIPunctuation guifg=#008844

syn match XxdASCIIDigit /3[0-9]/
hi XxdASCIIDigit guifg=#FF00FF

syn match XxdZeroByte /00/
hi link XxdZeroByte Comment

syn match XxdLineNumber /^[0-9a-fA-F]\+:/
hi link XxdLineNumber Comment
