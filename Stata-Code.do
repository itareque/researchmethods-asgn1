*set working directory
cd "/Users/ist2118/Documents/Research Methods II/Assignement 2"

* Install the "estout" package: 

ssc install estout

* Read in data: 
 insheet using assignment1-research-methods.csv, comma names clear

* Label your variables
label variable eliteschoolcandidate "Elite School Candidate"
label variable calledback "Called Back"
label variable malecandidate "Male Candidate"


* Run regression: 
reg calledback eliteschoolcandidate malecandidate

* Store regression
eststo regression_one 

**********************************
* Exporting table 1
global tableoptions "bf(%15.2gc) sfmt(%15.2gc) se label noisily noeqlines nonumbers varlabels(_cons Constant, end("" ) nolast)  starlevels(* 0.1 ** 0.05 *** 0.01) replace r2"
esttab regression_one using assignment1-Table.rtf, $tableoptions keep(eliteschoolcandidate malecandidate) 
