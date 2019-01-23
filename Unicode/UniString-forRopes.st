'From Cuis 4.2 of 25 July 2013 [latest update: #2943] on 21 September 2016 at 1:12:54 pm'!


!UniString methodsFor: '*ropes' stamp: 'KenD 9/19/2016 14:58:58'!
appendToRope: aRope

	"Convert from Unicode to ordinary String"
	^ ConcatRope concatenate: aRope with: self asString asRope! !

    !Rope methodsFor: '*unicodes' stamp: 'KenD 9/19/2016 13:02:42'!
asUniString

	"^UniString fromString: self"
	"Convert embedded NCRs to UTF-8, and then to UniString"
	^(self asString asUtf8: true) asUniString! !

