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

hi XxdBytes0x ctermfg=DarkRed		guifg=#FF0000
hi XxdBytes1x ctermfg=DarkRed		guifg=#EE1100
hi XxdBytes2x ctermfg=Red		guifg=#DD2200
hi XxdBytes3x ctermfg=Red		guifg=#CC3300
hi XxdBytes4x ctermfg=DarkYellow	guifg=#BB4400
hi XxdBytes5x ctermfg=DarkYellow	guifg=#AA5500
hi XxdBytes6x ctermfg=Yellow		guifg=#996600
hi XxdBytes7x ctermfg=Yellow		guifg=#887700
hi XxdBytes8x ctermfg=DarkGreen		guifg=#778800
hi XxdBytes9x ctermfg=DarkGreen		guifg=#669900
hi XxdBytesAx ctermfg=DarkGreen		guifg=#55AA00
hi XxdBytesBx ctermfg=Green		guifg=#44BB00
hi XxdBytesCx ctermfg=Green		guifg=#33CC00
hi XxdBytesDx ctermfg=Green		guifg=#22DD00
hi XxdBytesEx ctermfg=LightGreen	guifg=#11EE00
hi XxdBytesFx ctermfg=LightGreen	guifg=#00FF00

syn match XxdASCIIUppercaseLetter /\c4\x\|5[0-9A]/
hi XxdASCIIUppercaseLetter ctermfg=LightBlue guifg=#00FFFF

syn match XxdASCIILowercaseLetter /6\x\|7[0-9A]/
hi XxdASCIILowercaseLetter ctermfg=Blue guifg=#00AAEE

syn match XxdASCIIWhiteSpace /\c09\|0A\|0D\|20/
hi XxdASCIIWhiteSpace ctermfg=DarkBlue guifg=#004499

syn match XxdASCIIPunctuation /\c2[1-F]/
hi XxdASCIIPunctuation ctermfg=DarkGreen guifg=#008844

syn match XxdASCIIDigit /3[0-9]/
hi XxdASCIIDigit ctermfg=Magenta guifg=#FF00FF

syn match XxdZeroByte /00/
hi link XxdZeroByte Comment

syn match XxdLineNumber /^[0-9a-fA-F]\+:/
hi link XxdLineNumber Comment
