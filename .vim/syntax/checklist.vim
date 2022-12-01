syn match ChlTrue /[^\t ].*\<Y\>.*$/
hi link ChlTrue Good

syn match ChlMaybe /[^\t ].*\<M\>.*$/
hi link ChlMaybe Maybe

syn match ChlFalse /[^\t ].*\<N\>.*$/
hi link ChlFalse Bad

syn match ChlNotApplicable "[^\t ].*\<N/A\>.*$"
hi link ChlNotApplicable Irrelevant
