syn match ChlTrue /^.*\<Y\>.*$/
hi link ChlTrue Good

syn match ChlMaybe /^.*\<M\>.*$/
hi link ChlMaybe Maybe

syn match ChlFalse /^.*\<N\>.*$/
hi link ChlFalse Bad

syn match ChlNotApplicable ".*\<N/A\>.*$"
hi link ChlNotApplicable Irrelevant
