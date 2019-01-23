'From Cuis 4.1 of 12 December 2012 [latest update: #1686] on 21 April 2013 at 2:22:28.760763 pm'!
'Description Tests for UniCodes '!
!provides: 'UniCodesTests' 1 2!
!requires: 'UniCodes' 1 2!
!requires: 'Cuis-Base' 42 1788!
!classDefinition: #UniCodePerformance category: #UniCodesTests!
TestCase subclass: #UniCodePerformance
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodesTests'!
!classDefinition: 'UniCodePerformance class' category: #UniCodesTests!
UniCodePerformance class
	instanceVariableNames: ''!

!classDefinition: #UniCodesTests category: #UniCodesTests!
TestCase subclass: #UniCodesTests
	instanceVariableNames: 'flatRope longFlat shortFlat subRope concRope1 concRope2 concRope3 YiJing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodesTests'!
!classDefinition: 'UniCodesTests class' category: #UniCodesTests!
UniCodesTests class
	instanceVariableNames: ''!


!UniCodePerformance commentStamp: '<historical>' prior: 0!
UniCodes performance measures.!

!UniCodesTests commentStamp: '<historical>' prior: 0!
Performance Tests for UniCodes -- Unicode code points!

!UniCodePerformance methodsFor: 'performance' stamp: 'KenD 3/21/2013 16:34'!
setUp
	
	Transcript showOnDisplay: true.  "Display Performance Test Results"! !

!UniCodePerformance methodsFor: 'performance' stamp: 'KenD 3/21/2013 16:05'!
testConcatTime
	"self new testConcatTime"

	| r r2 result africanProverb interpretation |
	africanProverb :=  'A hundred pieces of elephant (reed) grass cannot cause the one fetching water to fall down on the way.'.
	interpretation := 'If you are serious about doing something, nothing can prevent you from doing it.'.
	
	r := UniString fromString: africanProverb.
	r2 := UniString fromString: interpretation.
	
	Transcript newLine.
	Transcript show: 'concat time for UniStrings: ',  [500000 timesRepeat: [ result := r2, r]] timeToRun asString, 'ms'.
	Transcript newLine.
	
	Transcript show: 'concat time for Strings: ',  
					[500000 timesRepeat: [ result := interpretation, africanProverb]] timeToRun asString, 'ms'.
	Transcript newLine.
	
	
	africanProverb :=  'A hundred pieces of elephant (reed) grass cannot cause the one fetching water to fall down on the way.'.
	interpretation := 'If you are serious about doing something, nothing can prevent you from doing it.'.
	
	
	r := UniString fromString: africanProverb.
	r2 := UniString fromString: interpretation.
	
	
	result := UniString fromString: ''.
	Transcript show: 'concat time for UniStrings: ',  [1000 timesRepeat: [ result := r2, r, result]] timeToRun asString, 'ms'.
	Transcript newLine.
	
	result := ''.
	Transcript show: 'concat time for Strings: ',  
			[1000 timesRepeat: [ result := interpretation, africanProverb, result]] timeToRun asString, 'ms'.
	Transcript newLine.
	
	
	
	! !

!UniCodePerformance methodsFor: 'performance' stamp: 'KenD 3/21/2013 16:06'!
testInjectInto
	"self new testInjectInto"

  	| ropeResult stringResult |
	
	Transcript newLine.
	ropeResult := '#inject:into: for UniStrings: ' asUniString,  
		([(1 to: 10000) inject: (UniString new) into: [ :left :right | left , right asUniString ]] 
			timeToRun asUniString), 
		'ms' asUniString, 
		UniString  newLineString.
	Transcript show: ropeResult. Transcript newLine.

	ropeResult := '#inject:into: for UniStringWrapper: ' asUniString,  
		([(1 to: 10000) inject: (UniStringWrapper new) into: [ :left :right | left , right asUniString ]] 
			timeToRun asUniString), 
		'ms' asUniString, 
		UniString  newLineString.
	Transcript show: ropeResult. Transcript newLine.

	stringResult := 
		'#inject:into: for Strings: ',  
		([ (1 to: 10000) inject: (String new) into: [ :left :right | left , right asString ]]
			 timeToRun asString), 
		'ms', 
		String newLineString.
	Transcript show: stringResult. 

	Transcript newLine.	
	.

	! !

!UniCodePerformance methodsFor: 'performance' stamp: 'KenD 3/21/2013 16:07'!
testIterationTime
	"self new testIterationTime"

	| r r2 ropeTest stringTest africanProverb interpretation ropeResult stringResult ir is|
	africanProverb :=  'A hundred pieces of elephant (reed) grass cannot cause the one fetching water to fall down on the way.'.
	interpretation := 'If you are serious about doing something, nothing can prevent you from doing it.'.
	
	r := UniString fromString: africanProverb.
	r2 := UniString fromString: interpretation.
	
	Transcript newLine.
	ropeResult := 'concat time for UniStrings: ',  
		[500000 timesRepeat: [ ropeTest := r2, r]] timeToRun asString, 'ms', String newLineString.
		ropeResult	:=	ropeResult, '  time for #do: loop: ',
		[ ir:=0. ropeTest do: [ :ch | ir := ir + 1. 10000 timesRepeat: [ir=ir "busy waiting"]]] 
			timeToRun asString, 'ms'.
	Transcript show: ropeResult. Transcript newLine.
	

	stringResult	:=	'concat time for Strings: ',
	    [500000 timesRepeat: [ stringTest := interpretation, africanProverb]] timeToRun asString, 'ms',
	             String newLineString.
	    stringResult	:=	stringResult, '  time for #do: loop: ',
		[ is:=0. stringTest do: [ :ch | is := is + 1. 10000 timesRepeat: [is=is "busy waiting"]]] 
		timeToRun asString, 'ms'.
	Transcript show: stringResult. Transcript newLine.
	
	self assert: is = ir. "the end indices of the string and the UniString must be equal"
	
	
	
	
! !

!UniCodePerformance methodsFor: 'performance' stamp: 'KenD 3/21/2013 16:20'!
testWriteStream
	"self new testWriteStreamOnRope"

  	| ws ropeResult stringResult |
	
	Transcript newLine.
	stringResult := '#nextPutAll: for Strings: ',  
		[ws := WriteStream on: String  new.
      	1 to: 100000 do: [ :i | ws nextPutAll: i asString]] timeToRun asString, 'ms', String newLineString.
	Transcript show: stringResult. 

	Transcript newLine.	
	ropeResult := '#nextPutAll: for UniStrings ' asUniString,  
		[ws := UniString  new.
      	1 to: 100000 do: [ :i | ws nextPutAll: i asUniString]] timeToRun asUniString, 'ms', UniString  newLineString.
	Transcript show: ropeResult. Transcript newLine.

	"@@FIXME The run time for the following is really dreadful!!"
"
	ropeResult := '#nextPutAll: for UniStringWrapper: ' asUniString,  
		[ws :=UniStringWrapper  new.
      	1 to: 100000 do: [ :i | ws nextPutAll: i asUniString]] timeToRun asUniString,
			 'ms', UniString  newLineString.
	Transcript show: ropeResult. Transcript newLine.
"! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/3/2013 22:40'!
setUp

	"Set up class variables (before each test)."
	"This could be done once, as UniStrings are immutable"
	| testString |
	testString := '1234abcd5678hijk90lm'.
	flatRope := UniFlat fromString: testString.
	"Build SubRope by hand as we need to test constructor"
	subRope := UniFlatSlice new initialize; charBlock: (flatRope charBlock) startIndex: 5 length: 12.
	concRope1 := UniSplice splice: subRope with: (' new string tail' asUniString).
	concRope2 := UniSplice splice: concRope1 with:concRope1.
	concRope3 := UniSplice splice: ('Now is the time ' asUniString) with: subRope.
	longFlat  := UniFlat fromString: '123456789012345678901234567890'. "long"
	shortFlat := UniFlat fromString: 'short'. "short"
	"First line of I Ching"
	YiJing := { 16r4E7E. 16r0020. 16r5143. 16r4EA8. 16r5229. 16r8C9E }  as: UniString..
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:05'!
testAccess
	"Can we get there from here?"

	self assert: ((flatRope at: 5) = $a).
	self assert: ((subRope at: 2) = $b).
	self assert: ((concRope1 at: 2) = $b).
	self assert: ((concRope1 at: 14) = $n).
	self assert: ((concRope2 at: 5) = $5).
	self assert: ((concRope2 at: (concRope1 size + 5)) = $5).
	self assert: ((concRope3 at: 5) = $i).
	self assert: ((concRope3 at: (16 + 5)) = $5).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:04'!
testAsCamelCase

       self assert: 'A man, a plan, a canal, panama' asUniString asCamelCase = 'AMan,APlan,ACanal,Panama'.
       self assert: 'Here 123should % be 6 the name6 of the method' asUniString asCamelCase = 'Here123should%Be6TheName6OfTheMethod' .
	self assert: ' how do you do? ' asUniString asCamelCase  = 'howDoYouDo?' .! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:04'!
testAsCase

       self assert: ( 'CaMeL' asUniString asLowercase  = 'camel').
       self assert: ( 'CaMeL' asUniString asUppercase  = 'CAMEL').
 ! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:04'!
testAsIdentifier

       self assert: ((( '234Fred987' asUniString ) asIdentifier: false) =  'fred987' ) .
       self assert: (( '235Fred987'  asUniString asIdentifier: true) = 'Fred987').
       self assert: ((UniString emptyString) asIdentifier: true)  = 'A' .  "Also works for empty rope"
       self assert: ((( '()87234'  asUniString) asIdentifier: false) =  'a87234').
       self assert: ((( '())z>=PPve889  U >'  asUniString) asIdentifier: false) = 'zPPve889U').! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:03'!
testAsInteger

       self assert: ( '1796exportFixes-tkMX' asUniString asInteger) = 1796 .
       self assert: ( '1848recentLogFile-sw' asUniString asInteger)   = 1848 .
       self assert: ( 'donald'  asUniString asInteger) =  nil .
       self assert: ( 'abc234def567'  asUniString asInteger) =  234 .! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:03'!
testAsLegalSelector

       self assert: ( '234znak 43 ) 2' asUniString asLegalSelector  = 'v234znak432').
 ! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 22:13'!
testCapitalized

	| uc lc |		
	uc := 'MElViN' asUniString .
	lc := 'mElViN' asUniString.

	self assert:  lc capitalized = uc.
	self assert: uc capitalized = uc.
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:02'!
testCaseConversion
      "copied from Cuis 4.1 class StringTest"
	"
	self new testCaseConversion
	"
	self assert: ('año Comé tomá Camión' asUniString asLowercase) = 'año comé tomá camión' asUniString.
	self assert: ('año Comé tomá Camión' asUniString asUppercase) = 'AÑO COMÉ TOMÁ CAMIÓN' asUniString! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/19/2013 12:34'!
testCompare

	self assert: ( 'abc' asUniString < 'abd' asUniString).
	self assert: ( 'abc' asUniString = 'abc' asUniString).
	self assert: ( 'abd' asUniString > 'abc' asUniString).
	self assert: ( 'abc' asUniString <= 'abd' asUniString).
	self assert: ( 'abc' asUniString <= 'abc' asUniString).
	self assert: ( 'abc' asUniString >= 'abc' asUniString).
	self assert: ( 'abd' asUniString >= 'abc' asUniString).

	self deny: ( 'abc' asUniString > 'abd' asUniString).
	self deny: ( 'abc' asUniString = 'abcx' asUniString).
	self deny: ( 'abd' asUniString < 'abc' asUniString).
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:01'!
testComparing
	self assert: 'foo' asUniString < 'foo:'.
	self assert: 'foo' asUniString < 'fooBar'.
	self assert: 'foo' asUniString <= 'foo:'.
	self assert: 'foo' asUniString <= 'fooBar'.
	self assert: 'foo:' asUniString > 'foo'.
	self assert: 'fooBar' asUniString > 'foo'.
	self assert: 'foo:' asUniString >= 'foo'.
	self assert: 'fooBar' asUniString >= 'foo'.
	self assert: ({ $c. $a. $t.} as: UniString ) = 'cat'.
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/23/2013 19:52'!
testDelimiters

	self assert: ('some little token:string:' asUniString findDelimiters: ':; '  startingAt: 16) = 18.
	self assert: ('some little token:string:' asUniString findDelimiters: ':; '  startingAt: 10) = 12.
	self assert: (';;;::  some little token:string:' asUniString skipDelimiters: ':; '  startingAt: 1) =  8.
	
	"FindTokens uses findDelimiters & skipDelimiters"
	self assert: ('some little token:string:' asUniString findTokens: Character space) asArray
		=  #('some' 'little' 'token:string:').
	self assert: ('some little token:string:' asUniString findTokens: ' :;' ) asArray
		=  #('some' 'little' 'token' 'string').
	self assert: ('some little token:string:' asUniString findTokens: ' :;'  includes: 'stri')
		= 'string' .
.! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:05'!
testEncompassParagraph1
	"copied from Cuis 4.1 class StringTest"

	self assert: ('a' asUniString encompassParagraph: (1 to: 0)) = (1 to: 1).
	self assert: ('a' asUniString encompassParagraph: (1 to: 1)) = (1 to: 1).
	self assert: ('a' asUniString encompassParagraph: (2 to: 1)) = (1 to: 1).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:05'!
testEncompassParagraph2
    "copied from Cuis 4.1 class StringTest"

	self assert: ('ab' asUniString encompassParagraph: (1 to: 0)) = (1 to: 2).
	self assert: ('ab' asUniString encompassParagraph: (1 to: 1)) = (1 to: 2).
	self assert: ('ab' asUniString encompassParagraph: (1 to: 2)) = (1 to: 2).
	self assert: ('ab' asUniString encompassParagraph: (2 to: 1)) = (1 to: 2).
	self assert: ('ab' asUniString encompassParagraph: (2 to: 2)) = (1 to: 2).
	self assert: ('ab' asUniString encompassParagraph: (3 to: 2)) = (1 to: 2).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:06'!
testEncompassParagraph3
"copied from Cuis 4.1 class StringTest"

self assert: ('a
' asUniString encompassParagraph: (1 to: 0)) = (1 to: 2).
self assert: ('a
' asUniString encompassParagraph: (1 to: 1)) = (1 to: 2).
self assert: ('a
' asUniString encompassParagraph: (1 to: 2)) = (1 to: 2).
self assert: ('a
' asUniString encompassParagraph: (2 to: 1)) = (1 to: 2).
self assert: ('a
' asUniString encompassParagraph: (2 to: 2)) = (1 to: 2).
self assert: ('a
' asUniString encompassParagraph: (3 to: 2)) = (3 to: 2).

self assert: ('a
zcxv' asUniString encompassParagraph: (1 to: 0)) = (1 to: 2).
self assert: ('a
zcxv' asUniString encompassParagraph: (1 to: 1)) = (1 to: 2).
self assert: ('a
zxcv' asUniString encompassParagraph: (1 to: 2)) = (1 to: 2).
self assert: ('a
zxcv' asUniString encompassParagraph: (2 to: 1)) = (1 to: 2).
self assert: ('a
zxcv' asUniString encompassParagraph: (2 to: 2)) = (1 to: 2).
self assert: ('a
zxcv' asUniString encompassParagraph: (3 to: 2)) = (3 to: 6).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:06'!
testEncompassParagraph4
"copied from Cuis 4.1 class StringTest"

self assert: ('
b' asUniString encompassParagraph: (1 to: 0)) = (1 to: 1).
self assert: ('
b' asUniString encompassParagraph: (1 to: 1)) = (1 to: 1).
self assert: ('
b' asUniString encompassParagraph: (1 to: 2)) = (1 to: 2).
self assert: ('
b' asUniString encompassParagraph: (2 to: 1)) = (2 to: 2).
self assert: ('
b' asUniString encompassParagraph: (2 to: 2)) = (2 to: 2).
self assert: ('
b' asUniString encompassParagraph: (3 to: 2)) = (2 to: 2).
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 20:07'!
testEncompassParagraph5
"copied from Cuis 4.1 class StringTest"

self assert: ('a
b' asUniString encompassParagraph: (1 to: 0)) = (1 to: 2).
self assert: ('a
b' asUniString encompassParagraph: (1 to: 1)) = (1 to: 2).
self assert: ('a
b' asUniString encompassParagraph: (1 to: 2)) = (1 to: 2).
self assert: ('a
b' asUniString encompassParagraph: (1 to: 3)) = (1 to: 3).
self assert: ('a
b' encompassParagraph: (2 to: 1)) = (1 to: 2).
self assert: ('a
b' asUniString encompassParagraph: (2 to: 2)) = (1 to: 2).
self assert: ('a
b' asUniString encompassParagraph: (2 to: 3)) = (1 to: 3).
self assert: ('a
b' asUniString encompassParagraph: (3 to: 2)) = (3 to: 3).
self assert: ('a
b' asUniString encompassParagraph: (3 to: 3)) = (3 to: 3).
self assert: ('a
b' asUniString encompassParagraph: (4 to: 3)) = (3 to: 3).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/21/2013 19:11'!
testFormat

	self
		assert: (('This is {1} !!' asUniString) format: #('a test'))
		equals: 'This is a test !!'.

 	{ 
 		[ ('\{ \} \\ foo {1} bar {2}' asUniString) format: { 12. 'string' } ] -> '{ } \ foo 12 bar string'. 
 		[ ('\{ \} \\ foo {2} bar {1}' asUniString) format: { 'string'. 12 } ] -> '{ } \ foo 12 bar string'. 
 		[ ( '\{1}' asUniString) format: {} ] -> '{1}'. 
 		[ ('\{1}{1}' asUniString) format: { $a } ] -> '{1}a'. 
 	} do: [ :each | 
		self assert: each key value equals: each value ]! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/21/2013 14:22'!
testGraphemeClusters
	"self debug: #testGraphemeClusters"
	
	| regionalIndicators graphemes noneHere |
	"Table 1a - Unicode annex 29: Text Segmentation"
	graphemes := UniString fromCodePointCollection: 
		#(	16r20 16r67 16r0308  "alphabetic,  combining-mark"
			16r20 16rAC01 	"<space>,  LVT"
		    	16r20 16r1100 16r1161 16r11A8  "<space>, L, V ,T"
			16r20 16r0BA8 16r0BBF  "alphabetic,  combining-mark"
			16r20 16r0E40 "SoutheastAsian"
			16r20 16r0E01 16r0E33 "SoutheastAsian, SoutheastAsian -- NYI: requires special"
			16r20 16r0E33 16r0937 16r93F "SoutheastAsian, Alphabetic, CombiningMark"
			16r20 16r0646 16r200D	
		  ).
	regionalIndicators := UniString fromCodePointCollection: 
		#(	16r20 16r1100 16r0308 16r1F1E6
			16r20 16r9308 1630308 16r1F1E6
			16r20 16r1F1F1 16r1F1FA  16r1F1F8 16r1F1EA
			16r20
		  ).
	noneHere := 'No grapheme clusters here!!' asUniString.
	
	self assert: (noneHere combinedGraphemePointsBetween: 1 and: noneHere size) isEmpty.
	self assert: (graphemes combinedGraphemePointsBetween: 1 and: graphemes size) 
			= { 2@3. 7@9. 11@12. 20@21. 23@24. }.  "NYI: SoutheastAsiam"
	self assert: (regionalIndicators combinedGraphemePointsBetween: 1 and: regionalIndicators size) 
		= { 2@3. 4@4. 8@8. 10@13. }.
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 19:54'!
testIsAllDigits
	"self run: #testIsAllDigits"
	self deny: ((UniString emptyString) isAllDigits).
	self deny: ( '1.23' asUniString isAllDigits).
	self deny: ( '12 3' asUniString isAllDigits).
	self deny: ( '-123' asUniString isAllDigits).
	self assert: ('0123456789' asUniString isAllDigits).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/30/2013 16:35'!
testLineBreaks

	| str |
	str := '123a b567c 
d90!! foo, Yes bar. then x.
' asUniString.

	self assert: ( (str possibleLineBreaksBetween: 1 and: str size) =  #(6 13 18 23 27 32 37 40) ).
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/28/2013 16:02'!
testLineEnumeration

	| someLines moreLines |
	someLines :=  'Some day
one will find
a way to do this' asUniString.

	self assert: ((someLines lines) = #( 'Some day' 'one will find' 'a way to do this' ) ).
	self assert: ((someLines lineNumber: 3) = 'a way to do this').
	self assert: (someLines lineCount = 3).
	self assert: ([ | count | 
					count := 0. 
					someLines linesDo: [ :l | count := count + 1]. 
					count
				] value
			= 3).
	self assert: ([ | aCol | 
					aCol := OrderedCollection new.
			. 		someLines linesDo: [ :l | aCol add: l ].
					aCol
				] value asArray
			= (someLines lines)).
	"line break at end is same as not"
	self assert: ((someLines, UniString crlfString) lineCount = 3).
	self assert: ((someLines, UniString lfString) lineCount = 3).
	self assert: ((someLines, UniString crString) lineCount = 3).
	
	"multiple line breaks are multiple lines"
	self assert: ((someLines, UniString crlfString, UniString crlfString, UniString crlfString) lineCount = 5).
	self assert: ((someLines, UniString lfString, UniString lfString, UniString lfString) lineCount = 5).

	moreLines := someLines , UniString crlfString , 'More text goes here.' asUniString , UniString crlfString.
	self assert: (moreLines lineCount = 4).
	self assert: ((moreLines , UniString crlfString) lineCount= 5). "Empty line at end"
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/23/2013 19:58'!
testMatch

	self assert: ((UniString fromString: '*'	)		match: 'zort' ).
	self assert: ((UniString fromString: '*baz'	)	match: 'mobaz' ).
	self deny:   ((UniString fromString: '*baz')		match: 'mobazo' ).
	self assert: ((UniString fromString: '*baz*')	match: 'mobazo' ).
	self deny:   ((UniString fromString: '*baz*')	match: 'mozo'  ).
	self assert: ((UniString fromString: 'foo*')		match: 'foozo'  ).
	self deny:    ((UniString fromString: 'foo*')	match: 'bozo'  ).
	self assert: ((UniString fromString: 'foo*baz')	match: 'foo23baz'  ).
	self assert: ((UniString fromString: 'foo*baz')	match: 'foobaz'  ).
	self deny:   ((UniString fromString: 'foo*baz')	match: 'foo23bazo'  ).
	self assert: ((UniString fromString: 'foo')		match: 'Foo'  ).
	self deny:   ((UniString fromString: 'foo*baz*zort') match: 'foobazort'  ).
	self assert: ((UniString fromString: 'foo*baz*zort') match: 'foobazzort'  ).
	self assert: ((UniString fromString: '*foo#zort')	match: 'afoo3zortthenfoo3zort'  ).
	self assert: ((UniString fromString: '*foo*zort')	match: 'afoodezortorfoo3zort'  ).
	
	#('*' 'f*'  'f*o' 'f*' '*f*' 'f#*' 'f##' '*oo' '#oo' '*o*' '#o#' '#o*' 
		'*o#' 'fo*' 'fo#' '*foo*' '###' '#*'  'f#*' 'f#*o')
		do: [ :each | self assert: (each asUniString match: 'foo') ].
	
	#('bar' 'foo#' '#foo' '*foo#' '#foo*' '*bar*') 
		do: [ :each | self deny: (each asUniString match: 'foo') ].
	
	self assert: ((('abcdefabcd'  asUniString) findSubstring: 'abc' startingAt: 1 caseSensitive: true) = 1)..
	self assert: ((('ABCdefabcd'  asUniString) findSubstring: 'abc' startingAt: 1 caseSensitive: true) = 7).
	self assert: ((('ABCdefabcd'  asUniString) findSubstring: 'abc' startingAt: 1 caseSensitive: false) = 1).
	self assert: ((('ABCdefabcd'  asUniString) findSubstring: 'xyz' startingAt: 1 caseSensitive: false) = 0).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/1/2013 17:21'!
testMeld
	"Do we meld short ropes?"

	self assert: ( (shortFlat , shortFlat) class == UniFlat ).
	self deny: ( (longFlat , shortFlat) class == UniFlat ).
	self deny: ( (shortFlat , longFlat) class == UniFlat ).
	self deny: ( (longFlat , longFlat) class == UniFlat ).

	self assert: ( (shortFlat , shortFlat) depth = 0).
	self assert: ( (longFlat ,  shortFlat) depth = 1).
	self assert: ( (shortFlat , longFlat)  depth = 1).
	self assert: ( (longFlat ,  longFlat , longFlat) depth = 2 ).
	self assert: ( (longFlat , shortFlat , longFlat) depth = 2 ).
	self assert: ( (longFlat , shortFlat , shortFlat) depth = 1 ).
	self assert: ( (shortFlat , longFlat ,  longFlat) depth = 2 ).
	self assert: ( (shortFlat , shortFlat , longFlat) depth = 1 ).
	self assert: ( (shortFlat , longFlat , shortFlat) depth = 2 ).
	self assert: ( (shortFlat , shortFlat , shortFlat) depth = 0 ).
	self assert: ((('Given enough rope' asUniString) ,  (UniString newLineString) , ('you can write a text editor!!' asUniString )) depth = 2).
	self assert: ((('Given enough rope' asUniString) ,  (UniString newLineString) , ('you can write a text editor!!' asUniString)) size = 46).
	self assert: (YiJing size = 6).
	"(ShortWordArray new: 7) size. --> 8"
	self assert: (('z' asUniString) , YiJing) size = 7. 
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 19:50'!
testMutation
	"Can we make a change which makes a difference?"

	self assert: ((flatRope at: 1 put: $0) asString = '0234abcd5678hijk90lm' ).
	self assert: ((flatRope at: (flatRope size) put: $0) asString = '1234abcd5678hijk90l0'  ).
	self assert: ((flatRope at: 5 put: $5) asString = '12345bcd5678hijk90lm' ).
	
	self assert: ((subRope at: 5 put: $e) asString =  'abcde678hijk' ).
	self assert: ((subRope at: 1 put: $0) asString = '0bcd5678hijk' ).
	self assert: ((subRope at: (subRope size) put: $0) asString = 'abcd5678hij0' ).
	
	self assert: ((concRope1 at: 2 put: $0) asString =  'a0cd5678hijk new string tail' ).
	self assert: ((concRope1 at: 20 put: $0) asString =  'abcd5678hijk new st0ing tail' ).
	self assert: ((concRope1 at: (concRope1 size) put: $0) asString =  'abcd5678hijk new string tai0' ).

	self assert: ((concRope3 at: 2 put: $0) asString =   'N0w is the time abcd5678hijk' ).
	self assert: ((concRope3 at: 20 put: $0) asString =   'Now is the time abc05678hijk' ).
	self assert: ((concRope3 at: (concRope1 size) put: $0) asString =   'Now is the time abcd5678hij0' ).
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/21/2013 19:45'!
testNumArgs
	"This is about http://code.google.com/p/pharo/issues/detail?id=237"
	
	| binary |
	binary := '*+-/\~=<>&@%,|' asUniString.
	self assert: (binary allSatisfy: [:char1 |
			(UniString with: char1) numArgs = 1 and: [binary allSatisfy: [:char2 |
				(UniString with: char1 with: char2) numArgs = 1 and: [binary allSatisfy: [:char3 |
					(UniString with: char1 with: char2 with: char3) numArgs = 1]]]]])
		description: 'binary selectors have 1 argument'.
		
	self assert: ( 'x' asUniString) numArgs = 0
		description: 'unary selectors have 0 arguments'.
	self assert: (  'x0' asUniString) numArgs = 0
		description: 'unary selectors have 0 arguments'.
	self assert: (  'yourself' asUniString) numArgs = 0
		description: 'unary selectors have 0 arguments'.
		
	self assert: (  'x:' asUniString) numArgs = 1
		description: 'keyword selectors have as many elements as colons characters'.
	self assert: ( 'x:y:' asUniString) numArgs = 2
		description: 'keyword selectors have as many elements as colons characters'.
	self assert: ( 'at:put:' asUniString) numArgs = 2
		description: 'keyword selectors have as many elements as colons characters'.
			
	self assert: (  'x_y_z' asUniString) numArgs = 0
		description: 'selectors can contain underscores'.
	self assert: (  '_x' asUniString) numArgs = 0
		description: 'selectors can begin with an underscore'.
	self assert: (  '_:_:' asUniString) numArgs = 2
		description: 'keyword selectors can contain underscores'.
		
	self assert: (  'at:withoutTrailingColon' asUniString) numArgs = -1
		description: 'keyword selectors should have a trailing colon character'.
		
	self assert: ( ':x' asUniString) numArgs = -1
		description: 'keyword selectors cannot begin with a colon character'.
		
	self assert: (  'x::y:' asUniString) numArgs = -1
		description: 'keyword selectors cannot have two consecutive colon characters'.
		
	self assert: (  '0x' asUniString) numArgs = -1
		description: 'selectors cannot begin with a digit'.
		
	self assert: (  'x::0y:' asUniString) numArgs = -1
		description: 'keyword selectors cannot have any key beginning with a digit'.
	
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 22:21'!
testPadLeftTo
	| aRope |
	aRope := 'a' asUniString.
	self assert: ( aRope padLeftTo: 3) equals: '  a'. 
	self assert: (aRope padLeftTo: 1) equals: 'a'. 
	self assert: (aRope padLeftTo: 0) equals: 'a'.! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 22:28'!
testPadLeftToWith
	| aRope |
	aRope := 'a' asUniString .
	self assert: (aRope padLeftTo: 3 with: $#) equals: '##a'. 
	self assert: (aRope padLeftTo: 1 with: $#) equals: 'a'. 
	self assert: (aRope padLeftTo: 0 with: $#) equals: 'a'.! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 22:28'!
testPadRightTo
	| aRope |
	aRope := 'a' asUniString.
	self assert: (aRope padRightTo: 3) equals: 'a  '. 
	self assert: (aRope padRightTo: 1) equals: 'a'. 
	self assert: (aRope padRightTo: 0) equals: 'a'.! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 22:28'!
testPadRightToWith
	| aRope |
	aRope := 'a' asUniString.
	self assert: (aRope padRightTo: 3 with: $#) equals: 'a##'. 
	self assert: (aRope padRightTo: 1 with: $#) equals: aRope. 
	self assert: (aRope padRightTo: 0 with: $#) equals: aRope.! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 22:14'!
testPrint
	"What does it look like?"

	self assert: ((flatRope asString) = '1234abcd5678hijk90lm').
	self assert: ((subRope asString) = 'abcd5678hijk').
	self assert: ((concRope1 asString) = 'abcd5678hijk new string tail').
	self assert: ((concRope2 asString) =
				 'abcd5678hijk new string tailabcd5678hijk new string tail').
	self assert: ((concRope3 asString) =  'Now is the time abcd5678hijk').
	
	self assert: ((flatRope printString) =  '''1234abcd5678hijk90lm''' ).
	self assert: ((subRope printString) =  '''abcd5678hijk''' ).
	self assert: ((concRope1 printString) =  '''abcd5678hijk new string tail''' ).
	self assert: ((concRope2 printString) =
				  '''abcd5678hijk new string tailabcd5678hijk new string tail''' ).
	self assert: ((concRope3 printString) =  '''Now is the time abcd5678hijk''').
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 19:40'!
testRebalance

	| fr1 fr2 t1 t2 |
	fr1 := UniFlat fromString: '12345678901234567890'.
	fr2 := UniFlat fromString: 'abcdefghijklmnopqrstuvwxyz'.
	t1 := (fr1, fr2, fr1, fr2, fr1, fr2, fr1, fr2).
	t2 := (fr1, concRope1, fr2, concRope2, fr1, fr2, fr1, fr2, concRope3, fr1, fr2).

	self assert: ( t1 depth = 7 ).
	self assert: ( t1 rebalance depth = 3 ).
	self assert: ( t2 depth = 11 ).
	self assert: ( t2 rebalance depth = 4 ).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 2/27/2013 21:13'!
testShortWordArray
	| u16 |
	u16 := ShortWordArray new: 8.

	u16 at: 1 put:  16r8123.
	self assert: ((u16 at: 1) = 16r8123).
	u16 at: 1 put: 0.
	self assert: ((u16 at: 1) = 0).
	u16 at: 1 put:  32768.
	self assert: ((u16 at: 1) = 32768).
	self should: [u16 at: 1 put:  -1] raise: Error. "wrong sign"
	self should: [u16 at: 1 put:  (16rFFFF + 1)] raise: Error. "too big"
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 19:40'!
testSpace
	"self debug: #testSpace"
	
	| string |
	string := UniString new.
	self assert: string size = 0. "instead of #isEmpty to be consistent with the following test"
	
	string := UniString space.
	self assert: string size = 1.
	self assert: string = ' '! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 22:56'!
testSubStrings
	self assert: ('aba' asUniString subStrings: 'bc') isArray.
	self assert: ('aba' asUniString subStrings: 'bc') = #('a' 'a').
	self assert: ('abba' asUniString subStrings: 'bc') = #('a' 'a').
	self assert: ('babbab' asUniString subStrings: 'bc') = #('a' 'a').
	self assert: ('babcbacb' asUniString subStrings: 'bc') = #('a' 'a').
	self assert: ('bbabbabb' asUniString subStrings: 'bc') = #('a' 'a').
	self assert: ('some few substrings ' asUniString substrings) = #('some' 'few' 'substrings') .! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 19:39'!
testSubstring
	"Can we copy?"

	self assert: ((flatRope copyFrom: 5 to: 8) asString = 'abcd').
	self assert: ((flatRope copyFrom: 1 to: (flatRope size)) == flatRope). "return self"
	self should: [flatRope copyFrom: -3 to: 5] raise: Error.
	self should: [flatRope copyFrom: 2 to: 55] raise: Error.
	self assert: ((flatRope copyFrom: 10 to: 5) asString = '' ).

	self assert: ((subRope copyFrom: 5 to: 8) asString = '5678').
	self should: [subRope copyFrom: -3 to: 5] raise: Error.
	self should: [subRope copyFrom: 2 to: 55] raise: Error.
	self assert: ((subRope copyFrom: 10 to: 5) asString = '' ).


	"from left rope"
	self assert: ((concRope1 copyFrom: 2 to:5) asString = 'bcd5').
	"fron right rope"
	self assert: ((concRope1  copyFrom: 14 to: 16) asString = 'new').
	"copy spans both ropes"
	self assert: ((concRope1  copyFrom: 9 to: 16) asString = 'hijk new').

	self should: [concRope1 copyFrom: -3 to: 5] raise: Error.
	self should: [concRope1 copyFrom: 2 to: 55] raise: Error.
	self assert: ((concRope1 copyFrom: 10 to: 5) asString = '' ).

	"span above meld trreshold"
	self assert: ((concRope2 copyFrom: 22 to:30) asString = 'ng tailab').
	self assert: ((concRope3 copyFrom: 12 to: 20) asString =  'time abcd').
	"span is less than meld threshold"
	self assert: ((concRope2 copyFrom: 26 to: 30) asString = 'ailab').
	self assert: ((concRope3 copyFrom: 14 to: 18) asString =  'me ab').
	
	self assert: ((concRope1 copyReplaceFrom: 9 to: 19  with: '@@ new stuff @@') asString
					=  'abcd5678@@ new stuff @@ring tail' ).
	self assert: ((concRope1 copyReplaceFrom: 9 to: 9  with: '@@ new stuff @@') asString
					=  'abcd5678@@ new stuff @@ijk new string tail' ).

! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 21:43'!
testTrimBoth
	self assert: UniString emptyString trimBoth = '' .
	self assert: ' ' asUniString trimBoth = '' .
	self assert: '	' asUniString trimBoth = '' .
	self assert: 'foo' asUniString trimBoth = 'foo' .
	self assert: ' foo ' asUniString trimBoth = 'foo' .
	self assert: '  foo  ' asUniString trimBoth = 'foo' .
	self assert: ((UniString newLineString ), '   foo  ') trimBoth = 'foo' .
	
	self assert: ('aabbaa' asUniString trimBoth: [ :each | each = $a ]) = 'bb' .
	self assert: ('bbaabb' asUniString trimBoth: [ :each | each = $a ]) = 'bbaabb' ! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 21:49'!
testTrimLeft
	self assert: (UniString emptyString trimLeft) = ''  .
	self assert: (' ' asUniString trimLeft) = '' .
	self assert: ('	' asUniString trimLeft) = '' .
	self assert: ('foo' asUniString trimLeft) = 'foo' .
	self assert: (' foo ' asUniString trimLeft) = 'foo ' .
	self assert: ('  foo  ' asUniString trimLeft) = 'foo  ' .
	
	self assert: ('aabbaa' asUniString trimLeft: [ :each | each = $a ]) = 'bbaa' .
	self assert: ('bbaabb' asUniString trimLeft: [ :each | each = $a ]) = 'bbaabb' ! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 21:50'!
testTrimRight
	self assert: ( '' asUniString trimRight) = '' .
	self assert: ( ' ' asUniString trimRight)  = '' .
	self assert: ( '	' asUniString trimRight)  = '' .
	self assert: ( 'foo' asUniString trimRight)  = 'foo' .
	self assert: ( ' foo ' asUniString trimRight)  = ' foo' .
	self assert: ( '  foo  ' asUniString trimRight)  = '  foo' .
	
	self assert: (('aabbaa' asUniString trimRight: [ :each | each = $a ]) = 'aabb' ).
	self assert: (('bbaabb' asUniString trimRight: [ :each | each = $a ]) = 'bbaabb' ).
	self assert: ((  ' abc  d   ' asUniString withoutTrailingBlanks) = ' abc  d' ). ! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 19:34'!
testTrimmed
	self assert: '  a  ' asUniString trimBoth = 'a' asUniString ! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/19/2013 15:54'!
testUniCharCaseMapping	

	self assert: ($2 asUniChar toLower = $2 asUniChar).
	self assert: ($A asUniChar toLower = $a asUniChar).
	self assert: ($a asUniChar toLower = $a asUniChar).
	self assert: ($A asUniChar toUpper = $A asUniChar).
	self assert: ($a asUniChar toUpper = $A asUniChar).
	self assert: ($A asUniChar caseFold = $a).
	
	self assert: (('a b c X Y Z' asUniString asUppercase) =  'A B C X Y Z').
	self assert: (('a b c X Y Z' asUniString asLowercase) =  'a b c x y z').
	
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/15/2013 20:57'!
testUniCharCreation
	"Can we create instances of UniChar?"

	| uc8 uc16 uc32 |
	uc8 := 16r34 asUniChar.
	uc16 := 16r1234 asUniChar.
	uc32 := 16r1234567 asUniChar.
"	
	self assert: (uc8  class == UChar8).
	self assert: (uc16 class == UChar16).
	self assert: (uc32 class == UChar32).
"
	self assert: (uc8  class == UniChar).
	self assert: (uc16 class == UniChar).
	self assert: (uc32 class == UniChar).
	self assert: (uc8 codePoint = 16r34).
	self assert: (uc16 codePoint = 16r1234).
	self assert: (uc32 codePoint = 16r1234567).
	uc8 := $a asUniChar.
"	self assert: (uc8 class == UChar8)."
	self assert: (uc8 class == UniChar).
	self assert: (uc8 codePoint = 97).
	self assert: (($A asUniChar codePoint) = ($A asciiValue)).  "Generally true for ASCII; mostly true for so8859s15".
	
	
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 2/26/2013 15:52'!
testUniCharDigit
	"Can we create instances of UniChar?"

	self assert: ($2 asUniChar digitValue = 2).
	self assert: (16r06F2  asUniChar digitValue = 2).    "EXTENDED ARABIC-INDIC DIGIT 2"
"	self assert: (16r4E8C asUniChar digitValue = 2).  @@FIXME: algorithm fails"	"Chinese"
	
	
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/18/2013 21:32'!
testUniCharPrinting
	
	"#storeOn: to read back in"
	self assert: ((String streamContents: [ :s | (UniChar fromCodePoint: 16r20AC) storeOn: s])
		= '(UniChar fromCodePoint: 16r20AC)' ).
	"#printOn: to display"
	self assert: ((String streamContents: [ :s | (UniChar fromCodePoint: 16r20AC) printOn: s])
		= '&#8364;' ).
	
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/7/2013 20:16'!
testUniCharProperties
	"Unicode general properties"

	self assert: ($A asUniChar isUppercase).
	self deny: ($a asUniChar isUppercase).
	self assert: ($a asUniChar isLowercase).
	self deny: ($a asUniChar isUppercase).
	self assert: ($a asUniChar isCasedLetter).
	self assert: ($A asUniChar isCasedLetter).
	self assert: (16r06F2  asUniChar isNumberChar ).    "EXTENDED ARABIC-INDIC DIGIT 2"
	self assert: ($2 asUniChar isNumberChar ).
	self deny: ($A asUniChar isNumberChar ).
	self assert: ($3 asUniChar hasTagDecimalNumber).
	self assert: (UniChar newLineCharacter generalCategory = #Control).
	self assert: (UniChar space generalCategory = #SpaceSeparator).
	self assert: (UniChar space isSeparator).
	self assert: (UniChar euro generalCategory = #CurrencySymbol).
	self assert: ($. asUniChar isPunctuation).
	self assert: ($; asUniChar isPunctuation).
	
		! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/18/2013 22:00'!
testUniStringAccess
	"Can we get there from here?"

	self assert: ((flatRope at: 5) asCharacter = $a).
	self assert: ((subRope at: 2) asCharacter = $b).
	self assert: ((concRope1 at: 2) asCharacter = $b).
	self assert: ((concRope1 at: 14) asCharacter = $n).
	self assert: ((concRope2 at: 5) asCharacter = $5).
	self assert: ((concRope2 at: (concRope1 size + 5)) asCharacter = $5).
	self assert: ((concRope3 at: 5) asCharacter = $i).
	self assert: ((concRope3 at: (16 + 5)) asCharacter = $5).
	self assert: ((YiJing at: 1) codePoint = 16r4E7E).
	
	self assert: (( 'a b c 1 2 3' asUniString select: [ :uc | uc isSpace not]) asString = 'abc123' ).
	self assert: (( 'a b c X Y Z' asUniString collect: [ :uc | uc toUpper]) asString = 'A B C X Y Z' ).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 08:34'!
testUniStringConversions

	self assert: (( '123' asUniString asNumber) = 123 ).
	self assert: (( 'znak -58 to wit' asUniString asSignedInteger) = -58 ).
	self assert: (( 'znak 158 to wit' asUniString asSignedInteger) = 158 ).
	self assert: ( ( 'ZOT' asUniString withFirstCharacterDownshifted) = 'zOT' ).
	self assert: ( ( '' asUniString withFirstCharacterDownshifted) = '' ).
	self assert: ( ( 'zOT' asUniString withFirstCharacterDownshifted) = 'zOT' ).
	
	self assert: (( '234Fred987' asUniString asIdentifier: false) =  'fred987' ).
	self assert: (( '235Fred987'  asUniString asIdentifier: true) =  'Fred987' ).
	self assert: (( ''  asUniString asIdentifier: true) =  'A' ).
	self assert: (( '()87234'  asUniString asIdentifier: false) =  'a87234' ).
	self assert: (( '())z>=PPve889  U >'  asUniString asIdentifier: false) =  'zPPve889U' ).
	
	self assert: (( ' how do you do? ' asUniString asCamelCase) = 'howDoYouDo?' ).
	

	self assert: (( '234Whoopie' asUniString initialIntegerOrNil) = 234 ).
	self assert: (( 'wimpy' asUniString  initialIntegerOrNil) = nil ).
	self assert: (( '234' asUniString  initialIntegerOrNil) =  234 ).
	self assert: (( '2N'  asUniString  initialIntegerOrNil) =  2 ).
	self assert: (( '2' asUniString  initialIntegerOrNil) =  2 ).
	self assert: (( '  89Ten ' asUniString  initialIntegerOrNil) =  nil ).
	self assert: (( '78 92' asUniString  initialIntegerOrNil) =  78 ).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/8/2013 20:57'!
testUniStringCreation
	"Can we create instances of UniString?"

	| testString |
	testString :=  'A big little test'.
	self assert: ((UniString fromString: testString) asString = testString).
	self assert: ((({ 16r4E7E. 16r0020. 16r5143. 16r4EA8. 16r5229. 16r8C9E  } collect: [ :n | n asUniChar]) as: UniString) = YiJing).
	self assert: (UniRepeatedCharString withChar: UniChar space repeatCount: 4) = '    '.! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/8/2013 21:23'!
testUniStringEnumeration	

	| testStr |
	testStr := 'a b c X Y Z' asUniString.
	self assert: ((testStr select: [ :uc | uc isSpace not]) = 'abcXYZ').
	self assert: ((testStr collect: [ :uchar | uchar asUppercase]) =  'A B C X Y Z').
	self assert: ((testStr collect: [ :uchar | uchar asUppercase]) =  (testStr asUppercase)).
	self assert: ((testStr collect: [ :uchar | uchar asLowercase]) =  (testStr asLowercase)).
	self assert: ('frog' asUniString reversed) = 'gorf'.
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/8/2013 21:26'!
testUniStringMeld
	"Do we meld short ropes?"

	self assert: ( (shortFlat , shortFlat) class == UniFlat ).
	self deny: ( (longFlat , shortFlat) class == UniFlat ).
	self deny: ( (shortFlat , longFlat) class == UniFlat ).
	self deny: ( (longFlat , longFlat) class == UniFlat ).

	self assert: ( (shortFlat , shortFlat) depth = 0).
	self assert: ( (longFlat ,  shortFlat) depth = 1).
	self assert: ( (shortFlat , longFlat)  depth = 1).
	self assert: ( (longFlat ,  longFlat , longFlat) depth = 2 ).
	self assert: ( (longFlat , shortFlat , longFlat) depth = 2 ).
	self assert: ( (longFlat , shortFlat , shortFlat) depth = 1 ).
	self assert: ( (shortFlat , longFlat ,  longFlat) depth = 2 ).
	self assert: ( (shortFlat , shortFlat , longFlat) depth = 1 ).
	self assert: ( (shortFlat , longFlat , shortFlat) depth = 2 ).
	self assert: ( (shortFlat , shortFlat , shortFlat) depth = 0 ).
	self assert: (subRope meldWith: ('xxx' asUniString)) = 'abcd5678hijkxxx'.
	self assert:  (('xxx' asUniString) meldWith: subRope) = 'xxxabcd5678hijk'.
	self assert: ((UniRepeatedCharString ofSize: 4) meldWith: ('abc' asUniString))
			= '    abc'.
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/8/2013 19:44'!
testUniStringMutation
	"Can we make a change which makes a difference?"

	self assert: ((flatRope at: 1 put: $0) asString = '0234abcd5678hijk90lm' ).
	self assert: ((flatRope at: (flatRope size) put: $0) asString = '1234abcd5678hijk90l0'  ).
	self assert: ((flatRope at: 5 put: $5) asString = '12345bcd5678hijk90lm' ).
	
	self assert: ((subRope at: 5 put: $e) asString =  'abcde678hijk' ).
	self assert: ((subRope at: 1 put: $0) asString = '0bcd5678hijk' ).
	self assert: ((subRope at: (subRope size) put: $0) asString = 'abcd5678hij0' ).
	
	self assert: ((concRope1 at: 2 put: $0) asString =  'a0cd5678hijk new string tail' ).
	self assert: ((concRope1 at: 20 put: $0) asString =  'abcd5678hijk new st0ing tail' ).
	self assert: ((concRope1 at: (concRope1 size) put: $0) asString =  'abcd5678hijk new string tai0' ).

	self assert: ((concRope3 at: 2 put: $0) asString =   'N0w is the time abcd5678hijk' ).
	self assert: ((concRope3 at: 20 put: $0) asString =   'Now is the time abc05678hijk' ).
	self assert: ((concRope3 at: (concRope1 size) put: $0) asString =   'Now is the time abcd5678hij0' ).

	self assert: (( 'A clear but rather long-winded summary' asUniString contractTo: 18)
		= 'A clear ...summary' ).
	self assert: (( '1234567890' asUniString padLeftTo:  15) = '     1234567890' ).
	self assert: (( '1234567890' asUniString padRightTo: 15) = '1234567890     ' ).
	
	self assert: (( '234znak 43 ) 2' asUniString asLegalSelector) = 'v234znak432' ).
	
	self assert: (( 'She said "it" first' asUniString asSmalltalkComment) 
		=  '"She said ""it"" first"' ).
		
	self assert: (( 'word' asUniString capitalized) = 'Word' ).
	self assert: (( 'Word' asUniString capitalized) = 'Word' ).
	self assert: (( '' asUniString capitalized) = '' ).
	
	self assert: ( ('sym' asUniString asSymbol) = #sym).
	
	self assert: ( ('foo bar: a baz: 2' asUniString keywords) = ('foo bar: a baz: 2'  keywords) ).
	
	self assert: ('File asFile Files File''s File' asUniString copyReplaceTokens: 'File' with: 'Snick')
		=  'Snick asFile Files Snick''s Snick' .

	
! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/1/2013 20:27'!
testUniStringPrint
	"What does it look like?"

	self assert: ((flatRope asString) = '1234abcd5678hijk90lm').
	self assert: ((subRope asString) = 'abcd5678hijk').
	self assert: ((concRope1 asString) = 'abcd5678hijk new string tail').
	self assert: ((concRope2 asString) =
				 'abcd5678hijk new string tailabcd5678hijk new string tail').
	self assert: ((concRope3 asString) =  'Now is the time abcd5678hijk').
	
	self assert: ((flatRope printString) =  '''1234abcd5678hijk90lm''' ).
	self assert: ((subRope printString) =  '''abcd5678hijk''' ).
	self assert: ((concRope1 printString) =  '''abcd5678hijk new string tail''' ).
	self assert: ((concRope2 printString) =
				  '''abcd5678hijk new string tailabcd5678hijk new string tail''' ).
	self assert: ((concRope3 printString) =  '''Now is the time abcd5678hijk''').
	
	self assert: (((UniString fromString: ($¤ asString)) stringRepresentation) =  '&#x20AC;' ).
	self assert: (((UniString fromString: ($¤ asString)) printString) =  '''&#x20AC;''' ).
	self assert: ((YiJing stringRepresentation) =  '&#x4E7E; &#x5143;&#x4EA8;&#x5229;&#x8C9E;' ).

! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/10/2013 19:53'!
testUniStringRebalance

	| fr1 fr2 t1 t2 |
	fr1 := UniFlat fromString: '12345678901234567890'.
	fr2 := UniFlat fromString: 'abcdefghijklmnopqrstuvwxyz'.
	t1 := (fr1, fr2, fr1, fr2, fr1, fr2, fr1, fr2).
	t2 := (fr1, concRope1, fr2, concRope2, fr1, fr2, fr1, fr2, concRope3, fr1, fr2).

	self assert: ( t1 depth = 7 ).
	self assert: ( t1 rebalance depth = 3 ).
	self assert: ( t1 rebalance = t1 ).
	self assert: ( t2 depth = 11 ).
	self assert: ( t2 rebalance depth = 4 ).
	self assert: ( t2 rebalance = t2 ).! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/18/2013 09:14'!
testUniStringWords

	| str1 str2 |
	str1 := 'The quick ("brown") fox can''t jump 32.3 feet, right?' asUniString.
	str2 :=  UniString fromCodePointCollection: 
				 #( 16r4E7E 16r0020  16r5143 16r4EA8  16r5229 16r8C9E ) .
	
	self assert: ((str1 wordsBetween: 1 and: str1 size) 
			= #( 'The' 'quick' 'brown' 'fox' 'can''t' 'jump' '32.3' 'feet' 'right') ).

	self assert: ((str1 wordsBetween: 1 and: str1 size) 
			= ((str1 wordPointsBetween: 1 and: str1 size)
				 collect: [ :pt | str1 copyFrom: (pt x) to: (pt y)] )).

	"CJK Ideograms are their own words"
	self assert: ((str2 wordsBetween: 1 and: str2 size)
			= ( #( 16r4E7E  "space elided" 16r5143 16r4EA8  16r5229 16r8C9E ) 
						collect: [ :codePt | codePt asUniChar asUniString ] ) ).
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/3/2013 16:26'!
testUniStringWrapper

	| wrapper |
	wrapper := UniStringWrapper with: 'Test me '.
	wrapper nextPut: 'more and better.'.
	self assert: (wrapper printString  = '''Test me more and better.'''  ).
	wrapper nextPutAll: #( $f $u $n).
	self assert:  ((wrapper stringRepresentation)  =  'Test me more and better.fun' ).
	self assert: ((UniStringWrapper new: 10) copyReplaceFrom: 3 to: 5 with: 'abc')
		= '  abc     '.
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 2/17/2013 21:08'!
testUniSubstring
	"Can we copy?"

	self assert: ((flatRope copyFrom: 5 to: 8) asString = 'abcd').
	self assert: ((flatRope copyFrom: 1 to: (flatRope size)) == flatRope). "return self"
	self should: [flatRope copyFrom: -3 to: 5] raise: Error.
	self should: [flatRope copyFrom: 2 to: 55] raise: Error.
	self assert: ((flatRope copyFrom: 10 to: 5) asString = '' ).

	self assert: ((subRope copyFrom: 5 to: 8) asString = '5678').
	self should: [subRope copyFrom: -3 to: 5] raise: Error.
	self should: [subRope copyFrom: 2 to: 55] raise: Error.
	self assert: ((subRope copyFrom: 10 to: 5) asString = '' ).


	"from left rope"
	self assert: ((concRope1 copyFrom: 2 to:5) asString = 'bcd5').
	"fron right rope"
	self assert: ((concRope1  copyFrom: 14 to: 16) asString = 'new').
	"copy spans both ropes"
	self assert: ((concRope1  copyFrom: 9 to: 16) asString = 'hijk new').

	self should: [concRope1 copyFrom: -3 to: 5] raise: Error.
	self should: [concRope1 copyFrom: 2 to: 55] raise: Error.
	self assert: ((concRope1 copyFrom: 10 to: 5) asString = '' ).

	"span above meld trreshold"
	self assert: ((concRope2 copyFrom: 22 to:30) asString = 'ng tailab').
	self assert: ((concRope3 copyFrom: 12 to: 20) asString =  'time abcd').
	"span is less than meld threshold"
	self assert: ((concRope2 copyFrom: 26 to: 30) asString = 'ailab').
	self assert: ((concRope3 copyFrom: 14 to: 18) asString =  'me ab').
	
	self assert: ((concRope1 copyReplaceFrom: 9 to: 19  with: '@@ new stuff @@') asString
					=  'abcd5678@@ new stuff @@ring tail' ).
	self assert: ((concRope1 copyReplaceFrom: 9 to: 9  with: '@@ new stuff @@') asString
					=  'abcd5678@@ new stuff @@ijk new string tail' ).

! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 19:33'!
testUpTo
	"self debug: #testUpTo"
	self assert: #up:to: asUniString keywords = #(up: to:).
	self assert: #copy:from:to: asUniString keywords = #(copy: from: to:).
	self assert: #up asUniString keywords = #(up).
	self assert: #at: asUniString keywords = #(at:).
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 4/5/2013 16:00'!
testUtf8Conversion

	| utf8 |
	
	utf8 _ ByteArray readHexFrom: ('CE BC 20 CE A9 20 CF 89 20 54 68 65 20 64 65 63 6F 6D 70 6F 73 69 74 69 6F 6E 20 6D 61 70 70 69 6E 67 20 69 73 20 3C EC B8 A0 2C 20 E1 86 B8 3E 2C 20 61 6E 64 20 6E 6F 74 20 3C E1 84 8E 2C 20 E1 85 B3 2C 20 31 31 42 38 3E 2E 0A 3C 70 3E 54 68 65 20 74 69 74 6C 65 20 73 61 79 73 20 E2 80 AB D7 A4 D7 A2 D7 99 D7 9C D7 95 D7 AA 20 D7 94 D7 91 D7 99 D7 A0 D7 90 D7 95 D7 9D 2C 20 57 33 43 E2 80 AC 20 69 6E 20 48 65 62 72 65 77 3C 2F 70 3E 0A 61 62 63 E0 A4 95 E0 A4 96 E0 A5 80 E5 9C 8B E9 9A 9B F0 90 8E 84 F0 90 8E 94 F0 90 8E 98' reject: [ :char  | char isSeparator ]).

	self assert: ((UniString fromUtf8: utf8) asUtf8) = utf8.
	! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/30/2013 16:35'!
testWithNoLineLongerThan
	"self run: #testWithNoLineLongerThan"

	| str1 str2 |
	str1 := '123 5678 0123456 890' asUniString.
	str2 := '123a b567c 
d90!! foo, Yes bar. then x.
' asUniString.
	
	self assert: ('Hello World' asUniString withNoLineLongerThan: 5) 
		= ('Hello' asUniString , UniString newLineString, 'World').
	self assert: ( 'Sample text to line break at some point' asUniString
				   withNoLineLongerThan:  28)
		= ('Sample text to line break' asUniString, UniString newLineString, 'at some point').
	self assert: ( 'Sample text to line break at some point' asUniString
				   withNoLineLongerThan:  12) lines
		= { ('Sample text' asUniString).
			('to line' asUniString).
			('break at' asUniString).
			('some point'asUniString).
		 }.
	self assert: (str1 wrapFrom: 1 to: 20 wrapLength: 8) lineCount = 4.
	self assert: (str1 wrapFrom: 1 to: 20 wrapLength: 8) = (str1 withNoLineLongerThan: 8).
	self assert: (str2 withNoLineLongerThan: 12) lineCount = 4.! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 19:30'!
testWithoutLeadingDigits

	self assert: ( '234Whoopie' asUniString withoutLeadingDigits = 'Whoopie').
	self assert: ( ' 4321 BlastOff!!'  asUniString withoutLeadingDigits  = 'BlastOff!!' ).
	self assert: ( 'wimpy' asUniString withoutLeadingDigits = 'wimpy' ).
	self assert: ( '  89Ten 12   ' asUniString withoutLeadingDigits = 'Ten 12   ' ).
	self assert: ( '78 92' asUniString withoutLeadingDigits = '' ).
	self assert: ( '9876 and with several words 9876' asUniString withoutLeadingDigits  = 'and with several words 9876' ).
	self assert: (  '123another one123' asUniString withoutLeadingDigits = 'another one123' ).

! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/20/2013 19:30'!
testWithoutTrailingDigits

	self assert: ( 'Whoopie234' asUniString withoutTrailingDigits = 'Whoopie').
	self assert: ( 'BlastOff!! 4321 ' asUniString withoutTrailingDigits  = 'BlastOff!!' ).
	self assert: ( 'wimpy' asUniString withoutTrailingDigits = 'wimpy' ).
	self assert: ( '  89Ten 12   ' asUniString withoutTrailingDigits = '  89Ten' ).
	self assert: ( '78 92' asUniString withoutTrailingDigits = '' ).
	self assert: ( 'and with several words 9876' asUniString withoutTrailingDigits  = 'and with several words' ).
	self assert: (  '123another one123' asUniString withoutTrailingDigits = '123another one' ).

! !

!UniCodesTests methodsFor: 'testing' stamp: 'KenD 3/22/2013 21:22'!
testindexOfstartingAt

	self assert: ('aa aa Ã©Ã© aa aa' asUniString indexOf: $a startingAt: 8) = 12.
	self assert: ('aa aa Ã©Ã© aa aa' asUniString indexOf: $z startingAt: 8) = 0.
	self assert: ((UniString fromCodePointCollection:  
		#( 16r4E7E 16r0020  16r5143 16r4EA8  16r5229 16r8C9E ) ) 
		indexOf: (16r5229 asUniChar)) = 5.
	self assert: ((UniString fromCodePointCollection:  
		#( 16r4E7E 16r0020  16r5143 16r4EA8  16r5229 16r8C9E ) ) 
		indexOf: (16r52300 asUniChar)) = 0.
	self assert: ((UniString fromCodePointCollection:  
		#( 16r4E7E 16r0020  16r5143 16r4EA8  16r5229 16r8C9E ) ) 
		indexOf: (16r5229 asUniChar) startingAt: 2) = 5.
	self assert: ((UniString fromCodePointCollection:  
		#( 16r4E7E 16r0020  16r5143 16r4EA8  16r5229 16r8C9E ) ) 
		indexOf: (16r5229 asUniChar) startingAt: 6) = 0.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'def') = 7.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'zef') = 8.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'zwf') = 9.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'zwy') = 0.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'zef' startingAt: 3) = 8.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'zwf' startingAt: 3) = 9.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'zwy' startingAt: 3) = 0.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'def' ifAbsent: [666]) = 7.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'zef' ifAbsent: [666]) = 8.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'zwf' ifAbsent: [666]) = 9.
	self assert: ('abacabdefghi23lst' asUniString indexOfAnyOf: 'zwy' ifAbsent: [666]) = 666.
! !
