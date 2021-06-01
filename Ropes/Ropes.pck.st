'From Cuis 5.0 [latest update: #4621] on 1 June 2021 at 11:40:49 am'!
'Description Ropes: functional, immutable strings'!
!provides: 'Ropes' 1 33!
!requires: 'Goodies' 1 4 nil!
!requires: 'Cuis-Base' 50 4621 nil!
!requires: 'Compression' 1 nil nil!
SystemOrganization addCategory: 'Ropes'!


!classDefinition: #RopeTextModel category: 'Ropes'!
TextModel subclass: #RopeTextModel
	instanceVariableNames: 'fileName timeStamp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'RopeTextModel class' category: 'Ropes'!
RopeTextModel class
	instanceVariableNames: ''!

!classDefinition: #RopeFileList category: 'Ropes'!
FileList subclass: #RopeFileList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'RopeFileList class' category: 'Ropes'!
RopeFileList class
	instanceVariableNames: ''!

!classDefinition: #Rope category: 'Ropes'!
SequenceableCollection subclass: #Rope
	instanceVariableNames: ''
	classVariableNames: 'EmptyRope Fibonacci MaxRopeDepth'
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'Rope class' category: 'Ropes'!
Rope class
	instanceVariableNames: ''!

!classDefinition: #ConcatRope category: 'Ropes'!
Rope subclass: #ConcatRope
	instanceVariableNames: 'depth totalLength leftRope rightRope'
	classVariableNames: 'MeldThreshold'
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'ConcatRope class' category: 'Ropes'!
ConcatRope class
	instanceVariableNames: ''!

!classDefinition: #FlatRope category: 'Ropes'!
Rope subclass: #FlatRope
	instanceVariableNames: 'theString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'FlatRope class' category: 'Ropes'!
FlatRope class
	instanceVariableNames: ''!

!classDefinition: #LazyFileRope category: 'Ropes'!
Rope subclass: #LazyFileRope
	instanceVariableNames: 'soFar fileStream fileName totalCount'
	classVariableNames: 'ChunkSize'
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'LazyFileRope class' category: 'Ropes'!
LazyFileRope class
	instanceVariableNames: ''!

!classDefinition: #RepeatedCharRope category: 'Ropes'!
Rope subclass: #RepeatedCharRope
	instanceVariableNames: 'char count'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'RepeatedCharRope class' category: 'Ropes'!
RepeatedCharRope class
	instanceVariableNames: ''!

!classDefinition: #SubRope category: 'Ropes'!
Rope subclass: #SubRope
	instanceVariableNames: 'startIndex length theString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'SubRope class' category: 'Ropes'!
SubRope class
	instanceVariableNames: ''!

!classDefinition: #RopeTextEditor category: 'Ropes'!
TextEditor subclass: #RopeTextEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'RopeTextEditor class' category: 'Ropes'!
RopeTextEditor class
	instanceVariableNames: ''!

!classDefinition: #RopePerformanceTest category: 'Ropes'!
TestCase subclass: #RopePerformanceTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'RopePerformanceTest class' category: 'Ropes'!
RopePerformanceTest class
	instanceVariableNames: ''!

!classDefinition: #RopeTest category: 'Ropes'!
TestCase subclass: #RopeTest
	instanceVariableNames: 'flatRope longFlat shortFlat subRope concRope1 concRope2 concRope3 string emptyString subcollection3ElementsSorted nonEmpty5ElementsSorted unsortedCollection indexInNonEmptyArray arrayWithCharacters nonEmpty1element withoutEqualElements sameAtEndAndBegining elementInNonEmpty collectionNotIncluded notIn'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'RopeTest class' category: 'Ropes'!
RopeTest class
	instanceVariableNames: ''!

!classDefinition: #RopeWrapper category: 'Ropes'!
Object subclass: #RopeWrapper
	instanceVariableNames: 'theRope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Ropes'!
!classDefinition: 'RopeWrapper class' category: 'Ropes'!
RopeWrapper class
	instanceVariableNames: ''!


!RopeTextModel commentStamp: '<historical>' prior: 0!
I am a TextModel which uses Ropes in place of Strings.

fileName is the fullName of a file or nil.
timeStamp is zero or the time the file was read to create a view.

If a user goes to save a file, the timeStamp should not have changed.!

!RopeFileList commentStamp: '<historical>' prior: 0!
I am a FileList which uses LazyFileRopes to display file contents.
!

!Rope commentStamp: '<historical>' prior: 0!
I am the abstract class of immutable strings known as Ropes.

Functional string operations return new Ropes. See #at:put: in subclasses.

Multithreaded sharing of ropes needs no locking.

See:
	https://en.wikipedia.org/wiki/Rope_%28computer_science%29

Ropes offers better performance than strings for common operations, and generally reduce memory allocations and copies, while only entailing a small degradation of less common operations.

Where a string is represented in memory by an array of character values, a rope is a tree structure whose leaves are slices of immutable strings. Therefore, concatenation, appending, prepending, substrings, etc. are operations that require only trivial tree manipulation, generally without having to copy memory. In addition, the tree structure of ropes makes them suitable as a form of index to speed-up access to Unicode characters by index in long chunks of text.

The following operations are algorithmically faster in ropes:

    - extracting a subrope is logarithmic (linear in strings);
    - appending/prepending is near-constant time (linear in strings);
    - concatenation is near-constant time (linear in strings);
    - char length is constant-time (linear in strings);

    - access to a character by index is logarithmic (linear in strings);

Note:
	Character>>asRope
	String>>asRope
	Rope class>>fromString
	!

!ConcatRope commentStamp: '<historical>' prior: 0!
I am the concatenation of two other ropes.!

!FlatRope commentStamp: '<historical>' prior: 0!
A flat rope is basically a string.  It is a "leaf".!

!LazyFileRope commentStamp: '<historical>' prior: 0!
I am a Rope which reads from a file as required to satisfy requests.

soFar is a Rope read so far.  The rest comes from fileStream.

I try to read ChunkSize characters when possible to satisfy a request.!

!RepeatedCharRope commentStamp: '<historical>' prior: 0!
I am a Rope consisting of a single char repeated count times.
!

!SubRope commentStamp: '<historical>' prior: 0!
I refer to an immutable string shared with another Rope.!

!RopeTextEditor commentStamp: '<historical>' prior: 0!
My edits are Ropes rather than Strings.!

!RopePerformanceTest commentStamp: '<historical>' prior: 0!
Performance Tests for Ropes!

!RopeTest commentStamp: '<historical>' prior: 0!
Test cases for Ropes!

!RopeWrapper commentStamp: '<historical>' prior: 0!
Simple wrapper to allow code which expects identity when things are mutated.

Ropes are immutable.

Actual operations on Ropes yield new ropes.

A RopeWrapper just keeps the result of the last operation on a rope.

See use of #nextPut: in RopeTest>>testWrapper

Use in place of WriteStream for #nextPut: and #nextPutAll.
  i.e. 
	RopeWrapper with: ('abc' asRope).
 vs:
	WriteStream on: 'abc',
!

!Rope methodsFor: 'printing' stamp: 'KenD 3/14/2013 19:52'!
printOn: aStream
	"Look good in the inspector"

"	aStream nextPut: $'. "
	self do: [ :char  |
		aStream nextPut: char.
		char == $'  ifTrue: [aStream nextPut: char]].
"	aStream nextPut: $'."! !

!Rope methodsFor: 'printing' stamp: 'KenD 2/23/2013 14:05'!
storeOn: aStream 
	"Act like (aString asRope)"
	"Print inside string quotes, doubling inbedded quotes."

	aStream nextPut: $( .
	self encodeDoublingQuoteOn: aStream.
	aStream nextPutAll: ' asRope)'.! !

!LazyFileRope methodsFor: 'printing' stamp: 'KenD 4/22/2013 19:19'!
printOn: aStream 
	"Look good in the inspector"

	aStream nextPutAll: 'LazyFileRope(''' , fileName , ''')'
	! !

!RopeTextModel methodsFor: 'commands' stamp: 'KenD 4/23/2013 20:14'!
acceptContentsFrom: aTextModelMorph
	"The user has typed Cmd+s -> Accept.
	Update backing file (query if needed).
	Answer true if OK, else false."
	
	(fileName isNil)
	ifTrue: [ ^(self saveToNewFileNotifying: aTextModelMorph) isNil not ]
	ifFalse: [ ^(self saveToOldFileNotifying: aTextModelMorph) isNil not ]! !

!RopeTextModel methodsFor: 'accessing' stamp: 'KenD 4/23/2013 20:13'!
actualContents: aTextOrString
	"Reset contents"

	(actualContents class = LazyFileRope)
		ifTrue: [ actualContents fileCleanup ]. "Remove old tmp file"
	actualContents _ aTextOrString ifNotNil: [ aTextOrString asRope asText ].
	undoRedoCommands resetToStart.
	self changed: #actualContents! !

!RopeTextModel methodsFor: 'accessing' stamp: 'KenD 4/23/2013 20:13'!
basicActualContents: aTextOrString
	"Do not throw events... Not nice... Use with care... Clean some day..."
	actualContents _ aTextOrString ifNotNil: [ aTextOrString asRope asText ].
	undoRedoCommands resetToStart.! !

!RopeTextModel methodsFor: 'accessing' stamp: 'KenD 4/23/2013 20:13'!
editorClass

	^RopeTextEditor! !

!RopeTextModel methodsFor: 'accessing' stamp: 'KenD 4/23/2013 20:13'!
fileName

	^ fileName! !

!RopeTextModel methodsFor: 'accessing' stamp: 'KenD 9/15/2016 14:05:02'!
labelString

	^ 'Text Edit(''', self fileName, ''')'! !

!RopeTextModel methodsFor: 'accessing' stamp: 'KenD 4/23/2013 20:14'!
timeStamp

	^ timeStamp! !

!RopeTextModel methodsFor: 'file handeling' stamp: 'KenD 4/24/2016 16:32'!
fromFile: aFileName
	"Open the file aFileName if possible and read the file into actualContents.
	Answer self if successful else nil."
	
	| aFile |
	(aFileName isEmpty) ifFalse: [
		aFile := aFileName asFileEntry.
		((aFile exists) and: [ aFile isFile ]) ifTrue: [
			"Found a non-directory file; assume reable UTF-8"
			fileName := aFileName.
			timeStamp := aFile modificationTime .
			actualContents := (aFileName asFileEntry fileContents asRope) asText.
			^self
		]
	].
	"Not a readable file"
	^nil

			! !

!RopeTextModel methodsFor: 'file handeling' stamp: 'KenD 4/24/2016 16:01'!
save
	"Answer true if OK, else nil"

	| dirEntry  |	
	dirEntry :=  fileName asFileEntry.
	(timeStamp = dirEntry modificationTime) 
	ifFalse: [
		(self confirm: 
'Caution!! Contents were saved
elsewhere since you started
editing them here.  Accept anyway?' ) 
		ifFalse: [ ^nil ]
	].
				
	dirEntry fileContents: (self actualContents asString asString).
	timeStamp := dirEntry modificationTime.
	^true
! !

!RopeTextModel methodsFor: 'file handeling' stamp: 'KenD 5/31/2016 16:31'!
saveAs
	"Answer true if OK, else nil"

	| dialogResult |	
	dialogResult := (StandardFileMenu new) 
   					newFileFrom: (DirectoryEntry currentDirectory)
					withPattern: '*' ; 
					startUpWithCaption: 'Type new file name for save'.
	
	(dialogResult isNil)
	ifTrue: [ ^nil ]
	ifFalse: [
		dialogResult directory
				 at: dialogResult name
				 put: self actualContents asString asString.

		timeStamp := (dialogResult directory
				 		name: dialogResult name) modificationTime.
		^true
	]! !

!RopeTextModel methodsFor: 'file handeling' stamp: 'KenD 4/24/2016 16:38'!
saveAs: aFileName
	"Answer true if OK, else nil"
	
	| dirEntry  |	
	fileName := aFileName.
	dirEntry :=  fileName asFileEntry.		
	dirEntry fileContents: (self actualContents asString asString).
	timeStamp := dirEntry modificationTime.
	^true

! !

!RopeTextModel methodsFor: 'file handeling' stamp: 'KenD 6/1/2021 10:15:31'!
saveOn: stream as: format
	"Saves the model to the given stream"
	stream binary.
	stream nextPutAll: self actualContents asString asString.! !

!RopeTextModel methodsFor: 'file handeling' stamp: 'KenD 5/31/2016 16:31'!
saveToNewFileNotifying: aTextModelMorph
	"Answer true if OK, else nil"

	| dialogResult |	
	dialogResult := (StandardFileMenu new) 
   					newFileFrom: (DirectoryEntry currentDirectory)
					withPattern: '*' ; 
					startUpWithCaption: 'Type new file name for save'.
	
	(dialogResult isNil)
	ifTrue: [ ^nil ]
	ifFalse: [
		dialogResult directory
				 at: dialogResult name
				 put: self actualContents asString asString.

		timeStamp := (dialogResult directory
				 		name: dialogResult name) modificationTime.
		"@@@FIXME Notify aTextModelMorph"
		^true
	]! !

!RopeTextModel methodsFor: 'file handeling' stamp: 'KenD 9/15/2016 14:20:07'!
saveToOldFileNotifying: aTextModelMorph
	"Answer true if OK, else nil"

	| dirEntry  |	
	dirEntry :=  fileName asFileEntry.
	(timeStamp = dirEntry  modificationTime) 
	ifFalse: [
		(self confirm: 
'Caution!! Contents were saved
elsewhere since you started
editing them here.  Accept anyway?' ) 
		ifFalse: [ aTextModelMorph flash. ^nil ]
	].
	"Note: Text asString -> inner string; then #asString converts Rope to String"
	dirEntry fileContents: (self actualContents asString asString).
	timeStamp := fileName asFileEntry modificationTime.
	"@@@FIXME Notify aTextModelMorph"
	^true
! !

!RopeTextModel methodsFor: 'initialize-release' stamp: 'KenD 4/23/2013 20:11'!
initialize
	"Initialize the state of the receiver with its default contents."

	actualContents _ Rope emptyString asText.
	timeStamp := 0.
	self flushUndoRedoCommands! !

!RopeTextModel methodsFor: 'initialize-release' stamp: 'KenD 4/23/2013 20:11'!
openLabel: aString 
	"Create a standard system view of the model, me, and open it."
	
	SystemWindow editText: self label: aString asRope wrap: true! !

!RopeTextModel methodsFor: 'misc' stamp: 'KenD 4/24/2016 16:33'!
refetch
	"Answer true if actualContents was actually fetched."
	
	(self fileName) ifNotNil: [ | dirEntry  |	
		"Reset timeStamp"
		dirEntry :=  fileName asFileEntry .
		timeStamp := dirEntry modificationTime.
		"(Re)read contents"
		actualContents := (dirEntry fileContents asRope) asText.
	].

	self changed: #refetched.
		
	^true! !

!RopeTextModel class methodsFor: 'instance creation' stamp: 'KenD 4/23/2013 20:15'!
fromFile: aFileName
	"Answer an instance of me if aFileName denotes a readable text file, else nil"

	^self new initialize fromFile: aFileName! !

!RopeTextModel class methodsFor: 'instance creation' stamp: 'KenD 5/31/2016 16:32'!
fromUser
	"Put up a StandardFileMenu and let the user choose a file to read into me."
	"Answer an instance of me or nil"
"
	RopeTextModel fromUser.
"	
	| dialogResult textModel |
	dialogResult := (StandardFileMenu new)
						oldFileFrom: (DirectoryEntry currentDirectory) ;
	 					startUpWithCaption: 'Select a UTF-8 Unicode text file'.
	
	((dialogResult isNil) or: [dialogResult isDirectory]) ifTrue: [ ^nil ].

	textModel := self new initialize 
		fromFile: ( (dialogResult directory pathName) , '/' , (dialogResult name) ).
		
	SystemWindow 
		editText: textModel
			label: 'Text Editor (''',  (dialogResult name) ,  ''')'
			wrap: true.
	
	^ textModel! !

!RopeTextModel class methodsFor: 'instance creation' stamp: 'KenD 4/23/2013 20:15'!
openLabel: aString

	self new openLabel: aString asRope! !

!RopeFileList methodsFor: 'private' stamp: 'KenD 4/24/2016 16:31'!
defaultContents
	acceptedContentsCache := (list
		ifNil: [ acceptedContentsCache := (Rope emptyRope) asText ]
		ifNotNil: [
			(String streamContents:
				[:s | s nextPutAll: 'NO FILE SELECTED'; newLine.
				 s nextPutAll: '  -- Folder Summary --'; newLine.
				 list do: [:item | s nextPutAll: item; newLine]] 
			) asRope
		]
	).
	brevityState _ #FileList.
	^ acceptedContentsCache! !

!RopeFileList methodsFor: 'private' stamp: 'KenD 5/31/2016 16:17'!
put: aText
	"Private - put the supplied text onto the file"

	| type |
	((brevityState = #fullFile) or: [brevityState = #briefFile])
	ifTrue: [| aFileEntry |
		aFileEntry := self fullName asFileEntry.
		aFileEntry fileContents: (aText asString asString).
		(fileName = aFileEntry name) 
			ifTrue: [ acceptedContentsCache _ aText asRope asText]  "@@@UniLazyString@@@"
			ifFalse: [self updateFileList].		"user renamed the file"
		^ true  "accepted"].

	listIndex = 0 ifTrue:
		[self inform: 'No fileName is selected'.
		^ false  "failed"].
	type _ 'These'.
	brevityState = #briefHex ifTrue: [type _ 'Abbreviated'].
	brevityState = #fullHex ifTrue: [type _ 'Hexadecimal'].
	brevityState = #FileList ifTrue: [type _ 'Directory'].
	self inform: ('{1} contents cannot
meaningfully be saved at present.' format:{type}).
	^ false  "failed"
! !

!RopeFileList methodsFor: 'private' stamp: 'KenD 4/24/2016 16:30'!
readContentsBrief: ignoredBrevityFlag
	"Read the contents of the receiver's selected file.
	  Don't create a file here.  Check if exists."
	| fileEntry |

	fileEntry := self fullName asFileEntry.

	fileEntry exists 
		ifFalse: [ ^ 'For some reason, this file cannot be read' ].
	
	brevityState := #fullFile.
	
	^ acceptedContentsCache := (fileEntry contents asRope) asText
	! !

!RopeFileList methodsFor: 'file list menu' stamp: 'KenD 4/23/2013 20:25'!
editorClass

	^RopeTextEditor! !

!Rope methodsFor: 'copying' stamp: 'KenD 9/10/2016 16:50:00'!
, aRopeOrStringOrText
	^ aRopeOrStringOrText appendToRope: self! !

!Rope methodsFor: 'copying' stamp: 'KenD 9/10/2016 16:46:27'!
append: aStringOrText

	^ aStringOrText appendToRope: self! !

!Rope methodsFor: 'copying' stamp: 'KenD 9/10/2016 17:00:49'!
appendToRope: aRope

	^ ConcatRope concatenate: aRope with: self! !

!Rope methodsFor: 'copying' stamp: 'KenD 9/10/2016 17:00:32'!
appendToString: aString

	^ ConcatRope concatenate: aString asRope with: self! !

!Rope methodsFor: 'copying' stamp: 'KenD 9/10/2016 17:00:13'!
appendToText: aText

	^  self asTextRope appendToText:  aText asTextRope ! !

!Rope methodsFor: 'copying' stamp: 'KenD 3/5/2013 21:55'!
copyFrom: start to: stop

	self subclassResponsibility ! !

!Rope methodsFor: 'copying' stamp: 'KenD 2/11/2013 18:47'!
copyReplaceFrom: start to: stop with: ropeOrString

	^((self copyFrom: 1 to: (start - 1)) , ropeOrString asRope , (self copyFrom: (stop + 1) to: (self size))) ! !

!Rope methodsFor: 'copying' stamp: 'KenD 2/23/2013 15:37'!
padLeftTo: totalLength

	^ self padded: #left  to: totalLength  with: Character space! !

!Rope methodsFor: 'copying' stamp: 'KenD 2/23/2013 15:37'!
padLeftTo: totalLength with: aChar

	^ self padded: #left  to: totalLength  with: aChar! !

!Rope methodsFor: 'copying' stamp: 'KenD 2/23/2013 15:34'!
padRightTo: totalLength

	^ self padded: #right  to: totalLength  with: Character space.! !

!Rope methodsFor: 'copying' stamp: 'KenD 2/23/2013 15:38'!
padRightTo: totalLength with: aChar

	^ self padded: #right  to: totalLength  with: aChar! !

!Rope methodsFor: 'copying' stamp: 'KenD 2/23/2013 16:35'!
padded: leftOrRight to: length with: char

	| padRope padLen |
	padLen := length - (self size)..
	padLen <= 0 ifTrue: [ ^self ].
	
	padRope := (String new: padLen withAll: char) asRope.
	
	leftOrRight = #left ifTrue:
		[^ (padRope , self) ].
	leftOrRight = #right ifTrue:
		[^ (self ,  padRope) ].! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/21/2013 20:16'!
< aStringOrRope 
	"Answer whether the receiver sorts before aStringOrRope.
	The collation order is case sensitive."

	^ (self compare: self with: (aStringOrRope asRope) collated: (String caseSensitiveOrder)) = 1! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/21/2013 20:16'!
<= aStringOrRope
	"Answer whether the receiver sorts before or equal to aStringOrRope.
	The collation order is case sensitive."

	^ (self compare: self with: (aStringOrRope asRope) collated: (String caseSensitiveOrder)) <= 2! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/21/2013 20:20'!
= aStringOrRope 
	"Answer whether the receiver sorts equally as aStringOrRope.
	The collation order is case sensitive."

	^ (self compare: self with: (aStringOrRope asRope) collated: (String caseSensitiveOrder)) = 2! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/21/2013 20:28'!
> aStringOrRope 
	"Answer whether the receiver sorts after aStringOrRope.
	The collation order is case sensitive."

	^ (self compare: self with: (aStringOrRope asRope) collated: (String caseSensitiveOrder)) = 3! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/21/2013 20:28'!
>= aStringOrRope 
	"Answer whether the receiver sorts after or equal to aStringOrRope.
	The collation order is case sensitive."

	^ (self compare: self with: (aStringOrRope asRope) collated: (String caseSensitiveOrder)) >= 2! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:41'!
alike: aStringOrRope 
	"Answer some indication of how alike the receiver is to the argument,  0 is no match, twice aString size is best score.  Case is ignored."

	| i j k minSize bonus |
	minSize _ (j _ self size) min: (k _ aStringOrRope size).
	bonus _ (j - k) abs < 2 ifTrue: [ 1 ] ifFalse: [ 0 ].
	i _ 1.
	[(i <= minSize) and: [((super at: i) bitAnd: 16rDF)  = ((aStringOrRope at: i) asciiValue bitAnd: 16rDF)]]
		whileTrue: [ i _ i + 1 ].
	[(j > 0) and: [(k > 0) and:
		[((super at: j) bitAnd: 16rDF) = ((aStringOrRope at: k) asciiValue bitAnd: 16rDF)]]]
			whileTrue: [ j _ j - 1.  k _ k - 1. ].
	^ i - 1 + self size - j + bonus. ! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:40'!
beginsWith: prefix
	"Answer whether the receiver begins with the given prefix string.
	The comparison is case-sensitive."

	^self is: prefix substingAt: 1! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:40'!
caseInsensitiveLessOrEqual: aStringOrRope 
	"Answer whether the receiver sorts before or equal to aString.
	The collation order is case insensitive."

	^ (self compare: self with: aStringOrRope collated: (String caseInsensitiveOrder)) <= 2! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:40'!
caseSensitiveLessOrEqual: aStringOrRope
	"Answer whether the receiver sorts before or equal to aString.
	The collation order is case sensitive."

	^ (self compare: self with: aStringOrRope collated: (String caseSensitiveOrder)) <= 2! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:39'!
commonPartWith: aStringOrRope startAt: startIndex stopAt: stopIndexRequested applying: aBlock
	"Return the size of the longest common subsequence with aString, only between startIndex and stopIndex.
	Apply aBlock to each character before comparing.
	Do a character-by-character comparison between the receiver and aString.  Return the index of the final character that matched exactly."
	| stopIndex |
	stopIndex _ stopIndexRequested min: aStringOrRope size.
	startIndex
		to: stopIndex
		do: [ :i |
			(aBlock value: (self at: i)) = (aBlock value: (aStringOrRope at: i)) ifFalse: [ ^ i - 1 ]].
	^ stopIndex! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:38'!
commonPrefixWith: aStringOrRope
	"Return the size of the longest common prefix with aString.
	Do a character-by-character comparison between the receiver and aString.  Return the index of the final character that matched exactly.
	'this is a string' commonPrefixWith: 'this is another'
	'this is a string' commonPrefixWith: ''
	'' commonPrefixWith: 'this is another'
	't' commonPrefixWith: 'this is another'
	'txxxxxxxxx' commonPrefixWith: 'this is another'
		"
	^ self commonPartWith: aStringOrRope startAt: 1 stopAt: self size applying: [ :c | c ]! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:37'!
compare: aStringOrRope 
	"Answer a comparison code telling how the receiver sorts relative to aString:
		1 - before
		2 - equal
		3 - after.
	The collation sequence is ascii with case differences ignored.
	To get the effect of a <= b, but ignoring case, use (a compare: b) <= 2."

	^ self compare: self with: aStringOrRope collated: (String caseInsensitiveOrder)! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:37'!
compare: aStringOrRope caseSensitive: aBool
	"Answer a comparison code telling how the receiver sorts relative to aString:
		1 - before
		2 - equal
		3 - after.
	"
	| map |
	map := aBool ifTrue:[String caseSensitiveOrder] ifFalse:[String caseInsensitiveOrder].
	^self compare: self with: aStringOrRope collated: map! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:36'!
crc16
	
	^ self asString crc16! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:34'!
endsWith: suffix
	"Answer whether the tail end of the receiver is the same as suffix.
	The comparison is case-sensitive."

	^self is: suffix substingAt: self size - suffix size + 1
"
  'Elvis' endsWith: 'vis'
"! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:35'!
endsWithAnyOf: aCollection
	aCollection do:[:suffix|
		(self endsWith: suffix) ifTrue:[^true].
	].
	^false! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/23/2013 15:36'!
equals:  aStringOrRope 
	"Answer whether the receiver sorts equally as aStringOrRope.
	The collation order is case sensitive."

	^ (self = aStringOrRope asRope)! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:31'!
hash
	"#hash is implemented, because #= is implemented"

	^ Rope stringHash: self initialHash: (self species hash)! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/22/2013 08:28'!
is: aStringOrRope substingAt: index
	"Answer whether the receiver includes aString as a subcollection at position index.
	The comparison is case-sensitive."
	| sequenceSize |
	sequenceSize _ aStringOrRope size.
	sequenceSize = 0 ifTrue: [ ^false ].
	index < 1 ifTrue: [ ^false ].
	self size - index + 1 < sequenceSize ifTrue: [ ^false ].
	"The following method uses a suboptimal algorithm (brute force pattern matching with O(n^2) worst case runtime), but the primitive in C is so fast (assuming large alphabets), that it's still worth using it instead of linear time pure smalltalk implementation. There are some obvious cases when the brute force algorithm is suboptimal, e.g. when the first elements don't match, so let's compare them here before using the primitive."
	(self at: index) = (aStringOrRope at: 1) ifFalse: [ ^false ].
	^(self findSubstring: aStringOrRope in: self startingAt: index matchTable: (String caseSensitiveOrder)) = index! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/21/2013 21:48'!
match: text
	"Answer whether text matches the pattern in this string.
	Matching ignores upper/lower case differences.
	Where this string contains #, text may contain any character.
	Where this string contains *, text may contain any sequence of characters."

	^ self startingAt: 1 match: text startingAt: 1
"
(Rope fromString: '*'	)		match: 'zort' true
(Rope fromString: '*baz'	)	match: 'mobaz' true
(Rope fromString: '*baz')		match: 'mobazo' false
(Rope fromString: '*baz*'')		match: 'mobazo' true
(Rope fromString: '*baz*'')		match: 'mozo' false
(Rope fromString: 'foo*'')		match: 'foozo' true
(Rope fromString: 'foo*'')		match: 'bozo' false
(Rope fromString: 'foo*baz'')	match: 'foo23baz' true
(Rope fromString: 'foo*baz'')	match: 'foobaz' true
(Rope fromString: 'foo*baz'')	match: 'foo23bazo' false
(Rope fromString: 'foo'')		match: 'Foo' true
(Rope fromString: 'foo*baz*zort'') match: 'foobazort' false
(Rope fromString: 'foo*baz*zort'') match: 'foobazzort' false
(Rope fromString: '*foo#zort'')	match: 'afoo3zortthenfoo3zort' true
(Rope fromString: '*foo*zort'')	match: 'afoodezortorfoo3zort' true
"! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/21/2013 21:42'!
sameAs: aStringOrRope 
	"Answer whether the receiver sorts equal to aString. The 
	collation sequence is ascii with case differences ignored."

	^ (self compare: self with: (aStringOrRope asRope) collated: (String caseInsensitiveOrder)) = 2! !

!Rope methodsFor: 'comparing' stamp: 'KenD 2/21/2013 21:43'!
startingAt: keyStart match: text startingAt: textStart
	"Answer whether text matches the pattern in this string.
	Matching ignores upper/lower case differences.
	Where this string contains #, text may contain any character.
	Where this string contains *, text may contain any sequence of characters."
	| anyMatch matchStart matchEnd i matchStr j ii jj |
	i := keyStart.
	j := textStart.

	"Check for any #'s"
	[i > self size ifTrue: [^ j > text size "Empty key matches only empty string"].
	(self at: i) = $#] whileTrue:
		["# consumes one char of key and one char of text"
		j > text size ifTrue: [^ false "no more text"].
		i := i+1.  j := j+1].

	"Then check for *"
	(self at: i) = $*
		ifTrue: [i = self size ifTrue:
					[^ true "Terminal * matches all"].
				"* means next match string can occur anywhere"
				anyMatch := true.
				matchStart := i + 1]
		ifFalse: ["Otherwise match string must occur immediately"
				anyMatch := false.
				matchStart := i].

	"Now determine the match string"
	matchEnd := self size.
	(ii := self indexOf: $* startingAt: matchStart) > 0 ifTrue:
		[ii = matchStart ifTrue: [self error: '** not valid -- use * instead'].
		matchEnd := ii-1].
	(ii := self indexOf: $# startingAt: matchStart) > 0 ifTrue:
		[ii = matchStart ifTrue: [self error: '*# not valid -- use #* instead'].
		matchEnd := matchEnd min: ii-1].
	matchStr := self copyFrom: matchStart to: matchEnd.

	"Now look for the match string"
	[jj := text findString: matchStr startingAt: j caseSensitive: false.
	anyMatch ifTrue: [jj > 0] ifFalse: [jj = j]]
		whileTrue:
		["Found matchStr at jj.  See if the rest matches..."
		(self startingAt: matchEnd+1 match: text startingAt: jj + matchStr size) ifTrue:
			[^ true "the rest matches -- success"].
		"The rest did not match."
		anyMatch ifFalse: [^ false].
		"Preceded by * -- try for a later match"
		j := j+1].
	^ false "Failed to find the match string"! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:15'!
adaptToCollection: rcvr andSend: selector
	"If I am involved in arithmetic with a collection, convert me to a number."

	^ rcvr perform: selector with: self asNumber! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:15'!
adaptToNumber: rcvr andSend: selector
	"If I am involved in arithmetic with a number, convert me to a number."

	^ rcvr perform: selector with: self asNumber! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:15'!
adaptToPoint: rcvr andSend: selector
	"If I am involved in arithmetic with a point, convert me to a number."

	^ rcvr perform: selector with: self asNumber! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 19:17'!
asCamelCase
	"Answer a new String, without any whitespace, and with words capitalized (Except for the first one)
	' how do you do? ' asRope asCamelCase
	"
	^ (String streamContents: [ :outStream | | inStream capitalize wroteSome |
		wroteSome _ false.
		capitalize _ false.
		inStream _ self readStream.
		[ inStream atEnd ] whileFalse: [ | c |
			c _ inStream next.
			c isSeparator
				ifTrue: [ capitalize _ true ]
				ifFalse: [
					capitalize & wroteSome ifTrue: [ c _ c asUppercase ].
					outStream nextPut: c.
					wroteSome _ true.
					capitalize _ false ]]]) asRope! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:12'!
asCharacter
	"Answer the receiver's first character, or '¥' if none.  Idiosyncratic, provisional."

	^ self size > 0 ifTrue: [self first] ifFalse: [$¥]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:11'!
asDate
	"Many allowed forms, see Date>>#readFrom:"

	^ Date fromString: self! !

!Rope methodsFor: 'converting' stamp: 'KenD 8/22/2016 17:00:01'!
asFileName
	"Answer a String made up from the receiver that is an acceptable file 
	name."

	^FileIOAccessor checkName: self fixErrors: true! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:11'!
asFourCode

	|result|
	self size = 4 ifFalse: [^self error: 'must be exactly four characters'].
	result _ self inject: 0 into: [:val :each | 256 * val + each asciiValue].
	(result bitAnd: 16r80000000) = 0 
		ifFalse: [self error: 'cannot resolve fourcode'].
	(result bitAnd: 16r40000000) = 0 ifFalse: [^result - 16r80000000].
	^result! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:09'!
asHex
	| stream |
	stream _ WriteStream on: (String new: self size * 2).
	self do: [ :ch | stream nextPutAll: ch hex ].
	^stream contents asRope! !

!Rope methodsFor: 'converting' stamp: 'KenD 12/14/2015 18:49'!
asIdentifier: shouldBeCapitalized
	"Return a legal identifier, with first character in upper case if shouldBeCapitalized is true, else lower case.  This will always return a legal identifier, even for an empty string"

	| aRope firstChar firstLetterPosition |
	aRope _ self select: [:el | el tokenish].
	firstLetterPosition _ aRope findFirst: [:ch | (ch isValidInIdentifiers) and: [ch isDigit not]].
	aRope _ firstLetterPosition = 0
		ifFalse:
			[aRope copyFrom: firstLetterPosition to: aRope size]
		ifTrue:
			['a', aRope].
	firstChar _ shouldBeCapitalized ifTrue: [aRope first asUppercase] ifFalse: [aRope first asLowercase].

	^ firstChar asRope, (aRope copyFrom: 2 to: aRope size)
"
'234Fred987' asRope asIdentifier: false.  
'235Fred987'  asRope asIdentifier: true
''  asRope asIdentifier: true. 
'()87234'  asRope asIdentifier: false. 
'())z>=PPve889  U >'  asRope asIdentifier: false. 

"! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:09'!
asInteger 
	"Answer the Integer created by interpreting the receiver as the string representation of an integer.  Answer nil if no digits, else find the first digit and then all consecutive digits after that"

	| startPosition tail endPosition |
	startPosition _ self findFirst: [:ch | ch isDigit].
	startPosition = 0 ifTrue: [^ nil].
	tail _ self copyFrom: startPosition to: self size.
	endPosition _ tail findFirst: [:ch | ch isDigit not].
	endPosition = 0 ifTrue: [endPosition _ tail size + 1].
	^ Number readFrom: (tail copyFrom: 1 to: endPosition - 1) readStream

"
'1796exportFixes-tkMX' asInteger
'1848recentLogFile-sw'  asInteger
'donald' asInteger
'abc234def567' asInteger
"! !

!Rope methodsFor: 'converting' stamp: 'KenD 5/12/2018 22:25:51'!
asLegalSelector
	| toUse |
	toUse _ ''.
	self do:
		[:char | char tokenish ifTrue: [ toUse _ toUse copyWith: char]].
		
	((self size = 0 or: [self first tokenish not]) or: [self first isDigit])
	ifTrue:	[ toUse _ 'v', toUse].

	^ (toUse asRope withFirstCharacterDownshifted)

"
'234znak 43 ) 2' asRope asLegalSelector 234znak432
"! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 19:45'!
asLowercase
	"Answer a String made up from the receiver whose characters are all 
	lowercase."

	^ self translateWith: (String lowercasingTable)! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:14'!
asNumber 
	"Answer the Number created by interpreting the receiver as the string 
	representation of a number."
	
	^Number readFrom: self readStream! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:15'!
asPacked
	"Convert to a longinteger that describes the string"
	
	^ self inject: 0 into: [ :previousValue :each | previousValue * 256 + each asInteger ].! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/8/2013 19:12'!
asRope

	^self! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:16'!
asSignedInteger
	"Answer the Integer created by interpreting the receiver as the string representation of an integer, possibly with a leading minus sign.  Answer nil if no digits, else find the first digit and then all consecutive digits after that"

	| startPosition tail endPosition |
	startPosition _ self findFirst: [:ch | ch isDigit or: [ch == $-]].
	startPosition = 0 ifTrue: [^ nil].
	tail _ self copyFrom: startPosition to: self size.
	endPosition _ tail findFirst: [:ch | ch isDigit not and: [ch ~~ $-]].
	endPosition = 0 ifTrue: [endPosition _ tail size + 1].
	^ Number readFrom: (tail copyFrom: 1 to: endPosition - 1) readStream

"
'znak -58 to wit' asSignedInteger
"! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:16'!
asSmalltalkComment
	"return this string, munged so that it can be treated as a comment in Smalltalk code.  Quote marks are added to the beginning and end of the string, and whenever a solitary quote mark appears within the string, it is doubled"

	^(String streamContents:  [ :str |
		| quoteCount first |

		str nextPut: $".
	
		quoteCount := 0.
		first := true.
		self do: [ :char |
			char = $"
				ifTrue: [
					first ifFalse: [
						str nextPut: char.
						quoteCount := quoteCount + 1 ] ]
				ifFalse: [
					quoteCount odd ifTrue: [
						"add a quote to even the number of quotes in a row"
						str nextPut: $" ].
					quoteCount := 0.
					str nextPut: char ].
			first := false ]. 

		quoteCount odd ifTrue: [
			"check at the end"
			str nextPut: $". ].

		str nextPut: $".
	]) asRope
	! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/10/2013 14:30'!
asString

	^self stringRepresentation! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:17'!
asStringOrText
	"Answer this string."

	^ self "@@@ ?asString? @@@"
! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:18'!
asSymbol
	"Answer the unique Symbol whose characters are the characters of the 
	string."

	^Symbol intern: self asString! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/11/2013 16:59'!
asText
	"Answer a Text whose ''string'' is the receiver."

	^Text fromString: self! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:18'!
asUnHtml
	"Strip out all Html stuff (commands in angle brackets <>) and convert
the characters &<> back to their real value.  Leave actual cr and tab as
they were in text."
	| in out char rest did inString |

	"Hack in some minimal workaround for Unicode stuff"
	inString _ self copyReplaceAll: 'â€™' with: $' asString.
	"Check if we can handle this in #safeValue: in some way..."
	inString = self ifFalse: [ self halt ].
	
	in _ ReadStream on: inString.
	out _ WriteStream on: (String new: self size).
	[ in atEnd ] whileFalse: [
		in peek = $<
			ifTrue: [in unCommand] 	"Absorb <...><...>"
			ifFalse: [(char _ in next) = $&
						ifTrue: [rest _ in upTo: $;.
								did _ out position.
								rest = 'lt' ifTrue: [out nextPut: $<].
								rest = 'gt' ifTrue: [out nextPut: $>].
								rest = 'amp' ifTrue: [out nextPut: $&].
								rest = 'deg' ifTrue: [out nextPut: $¡].
								rest = 'quot' ifTrue: [out nextPut: $"].
								rest first = $# ifTrue: [ out nextPut: (Character value: rest asInteger) ].
								did = out position ifTrue: [
									out nextPut: $&; nextPutAll: rest.
									"self error: 'unknown encoded HTML char'."
									"Please add it to this method"]]
						ifFalse: [out nextPut: char]].
		].
	^ out contents asRope! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:24'!
asUnaccented
	"
	'Hello' asRope asUnaccented
	'áéîôóü' asRope asUnaccented
	"
	^self hasAccents
		ifFalse: [ self ]
		ifTrue: [ (self collect: [ :c | c asUnaccented ]) asRope]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 19:44'!
asUppercase
	"Answer a String made up from the receiver whose characters are all 
	uppercase."

	^ self translateWith: (String uppercasingTable)! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:30'!
asUtf8
	"Convert the given string to UTF-8 from the internal encoding: ISO Latin 9 (ISO 8859-15)
	Answer a ByteArray.
	
	See #fromUtf8: "

	^self asUtf8: false! !

!Rope methodsFor: 'converting' stamp: 'KenD 9/19/2016 12:36:25'!
asUtf8: convertEmbeddedNCRs
	"Convert the given string to UTF-8 from the internal encoding: ISO Latin 9 (ISO 8859-15)
	Answer a ByteArray.
	
	If convertEmbeddedNCRs, then convert embedded NCRs such as '&#956;' (decimal) or '&#x03BC;' (hex) to CodePoints.
	See http://en.wikipedia.org/wiki/Numeric_character_reference
	
	
	Note: The conversion of NCRs is reversible. See #fromUtf8:hex:trimLastNull:
	This allows handling the full Unicode in Cuis tools, that can only display the Latin alphabet, by editing the NCRs.
	The conversions can be done when reading / saving files, or when pasting from Clipboard and storing back on it.

Copy the following and paste in your external text editor
&#913;&#945; 	Alpha 	
&#914;&#946; 	Beta 	
&#915;&#947; 	Gamma 	
&#916;&#948; 	Delta 	
&#917;&#949; 	Epsilon 	
&#918;&#950; 	Zeta 	
&#919;&#951; 	Eta 	
&#920;&#952; 	Theta 	
&#921;&#953; 	Iota 	
&#922;&#954; 	Kappa 	
&#923;&#955; 	Lambda 	
&#924;&#956; 	Mu 	
&#925;&#957; 	Nu
&#926;&#958; 	Xi
&#927;&#959; 	Omicron
&#928;&#960; 	Pi
&#929;&#961; 	Rho
&#931;&#963;&#962; 	Sigma
&#932;&#964; 	Tau
&#933;&#965; 	Upsilon
&#934;&#966; 	Phi
&#935;&#967; 	Chi
&#936;&#968; 	Psi
&#937;&#969; 	Omega

	"

	^ByteArray streamContents: [ :outStream | | inStream nextChar prevPos maybeUnicodeNCR ncrSize codePoint |
		inStream _ self readStream.
		[ inStream atEnd ] whileFalse: [
			nextChar _ inStream next.
			(convertEmbeddedNCRs and: [ nextChar = $& ])
				ifTrue: [
					prevPos _ inStream position.
					maybeUnicodeNCR _ inStream next: 9.
					maybeUnicodeNCR first = $# ifTrue: [
						ncrSize _ maybeUnicodeNCR indexOf: $;.
						ncrSize = 0
							ifFalse: [
								codePoint _ maybeUnicodeNCR second = $x
									ifTrue: [ ('16r', (maybeUnicodeNCR copyFrom: 3 to: ncrSize) asUppercase) asNumber ]
									ifFalse: [ (maybeUnicodeNCR copyFrom: 2 to: ncrSize) asNumber ]]
							ifTrue: [
								"Not an NCR after all. Just add the $& and continue from there"
								codePoint _ nextChar unicodeCodePoint ].
						Character
							evaluate: [ :byte | outStream nextPut: byte ]
							withUtf8BytesOfUnicodeCodePoint: codePoint.
						inStream position: prevPos + ncrSize ]]
				ifFalse: [
					codePoint _ nextChar codePoint.
					Character
						evaluate: [ :byte | outStream nextPut: byte ]
						withUtf8BytesOfUnicodeCodePoint: codePoint ]]]! !

!Rope methodsFor: 'converting' stamp: 'jmv 9/19/2016 09:33:04'!
base64Decoded
	"Decode the receiver from base 64"
	"
	'SGVsbG8gV29ybGQ=' base64Decoded
	'SGVsbG8gV29ybGQ=' base64Decoded asString
	"
	^(Base64MimeConverter mimeDecode: self) asRope! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 18:32'!
capitalized
	"Return a copy with the first letter capitalized"
	| cap |
	self isEmpty ifTrue: [ ^self ].
	cap _ self copy.
	^cap at: 1 put: (cap at: 1) asUppercase.
! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/21/2013 17:28'!
contractTo: smallSize
	"return myself or a copy shortened by ellipsis to smallSize"
	
	(self size < smallSize)
	ifTrue: [ ^self ]
	ifFalse: [ ^ (self copyFrom: 1 to: smallSize) , (Rope  fromString: '...') ]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:34'!
correctAgainst: wordList
	"Correct the receiver: assume it is a misspelled word and return the (maximum of five) nearest words in the wordList.  Depends on the scoring scheme of alike:"
	| results |
	results _ self correctAgainst: wordList continuedFrom: nil.
	results _ self correctAgainst: nil continuedFrom: results.
	^ results! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:34'!
correctAgainst: wordList continuedFrom: oldCollection
	"Like correctAgainst:.  Use when you want to correct against several lists, give nil as the first oldCollection, and nil as the last wordList."

	^ wordList
		ifNil: [
			self correctAgainstEnumerator: nil continuedFrom: oldCollection ]
		ifNotNil: [
			self
				correctAgainstEnumerator: [ :action | wordList do: action without: nil]
				continuedFrom: oldCollection ]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:34'!
correctAgainstDictionary: wordDict continuedFrom: oldCollection
	"Like correctAgainst:continuedFrom:.  Use when you want to correct against a dictionary."

	^ wordDict
		ifNil: [
			self correctAgainstEnumerator: nil continuedFrom: oldCollection ]
		ifNotNil: [
			self
				correctAgainstEnumerator: [ :action | wordDict keysDo: action ]
				continuedFrom: oldCollection ]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:34'!
findSelector
	"Dan's code for hunting down selectors with keyword parts; while this doesn't give a true parse, in most cases it does what we want, in where it doesn't, we're none the worse for it."
	| sel possibleParens level n |
	sel _ self withBlanksTrimmed.
	(sel includes: $:) ifTrue: [
		sel _ sel copyReplaceAll: ':' with: ': '.	"for the style (aa max:bb) with no space"
		possibleParens _ sel findTokens: Character separators.
		sel _ String streamContents:
			[:s | level _ 0.
			possibleParens do:
				[:token |
				(level = 0 and: [token endsWith: ':'])
					ifTrue: [s nextPutAll: token]
					ifFalse: [(n _ token occurrencesOf: $( ) > 0 ifTrue: [level _ level + n].
							(n _ token occurrencesOf: $[ ) > 0 ifTrue: [level _ level + n].
							(n _ token occurrencesOf: $] ) > 0 ifTrue: [level _ level - n].
							(n _ token occurrencesOf: $) ) > 0 ifTrue: [level _ level - n]]]]].

	sel isEmpty ifTrue: [^ nil].
	Symbol hasInterned: sel ifTrue: [ :aSymbol |
		^ aSymbol].
	^ nil! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:34'!
initialIntegerOrNil
	"Answer the integer represented by the leading digits of the receiver, or nil if the receiver does not begin with a digit"
	| firstNonDigit |
	(self size = 0 or: [self first isDigit not]) ifTrue: [^ nil].
	firstNonDigit _ (self findFirst: [:m | m isDigit not]).
	firstNonDigit = 0 ifTrue: [firstNonDigit _ self size + 1].
	^ (self copyFrom: 1  to: (firstNonDigit - 1)) asNumber
"
'234Whoopie' initialIntegerOrNil
'wimpy' initialIntegerOrNil
'234' initialIntegerOrNil
'2N' initialIntegerOrNil
'2' initialIntegerOrNil
'  89Ten ' initialIntegerOrNil
'78 92' initialIntegerOrNil
"
! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:36'!
keywords
	"Answer an array of the keywords that compose the receiver."
	| kwd char keywords |
	keywords _ Array streamContents:
		[:kwds | kwd _ WriteStream on: (String new: 16).
		1 to: self size do:
			[:i |
			kwd nextPut: (char _ self at: i).
			char = $: ifTrue: 
					[kwds nextPut: kwd contents.
					kwd reset]].
		kwd isEmpty ifFalse: [kwds nextPut: kwd contents]].
	(keywords size >= 1 and: [(keywords at: 1) = ':']) ifTrue:
		["Has an initial keyword, as in #:if:then:else:"
		keywords _ keywords allButFirst].
	(keywords size >= 2 and: [(keywords at: keywords size - 1) = ':']) ifTrue:
		["Has a final keyword, as in #nextPut::andCR"
		keywords _ keywords copyReplaceFrom: keywords size - 1
								to: keywords size with: {':' , keywords last}].
	^ keywords collect: [ :str | str asRope ]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:36'!
numericSuffix
	^ self stemAndNumericSuffix last

"
'abc98' numericSuffix
'98abc' numericSuffix
"! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:36'!
onlyLetters
	"answer the receiver with only letters"
	^ self select: [:each | each isLetter]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:39'!
periodPrefixAndSuffix
	| prefix suffix |
	prefix _ self sansPeriodSuffix.
	suffix _ self copyFrom: prefix size+1 to: self size.
	^Array with: prefix with: suffix! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:39'!
prefixAndSuffix: aCharacter
	"Answer an array with the prefix up to the last occurrence of aCharacter, and the suffix after it.
	Answer nil if aCharacter is not in self
	'1164-ReferenceStreamFix-jmv.1.cs' prefixAndSuffix: $-
	"
	| i |
	i _ self findLast: [ :c | c = aCharacter ].
	i = 0 ifTrue: [ ^ nil ].
	^ { self copyFrom: 1 to: i-1 . self copyFrom: i+1 to: self size }! !

!Rope methodsFor: 'converting' stamp: 'KenD 8/22/2016 16:13:35'!
reversed

       ^ Rope fromString: (self asString reversed)! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:42'!
romanNumber
	"Answer integer from roman number"
"
	'IV' romanNumber
"
	| value v1 v2 |
	value _ v1 _ v2 _ 0.
	self reverseDo:
		[:each |
		v1 _ #(1 5 10 50 100 500 1000) at: ('IVXLCDM' indexOf: each).
		v1 >= v2
			ifTrue: [value _ value + v1]
			ifFalse: [value _ value - v1].
		v2 _ v1].
	^ value! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:42'!
sansPeriodSuffix
	"Return a copy of the receiver up to, but not including, the first period.  If the receiver's *first* character is a period, then just return the entire receiver. "

	| likely |
	likely _ self copyUpTo: $..
	^ likely size = 0
		ifTrue:	[self]
		ifFalse:	[likely]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:44'!
splitInteger
	"Answer an array that is a splitting of self into a string and an integer.
	'43Sam' ==> #(43 'Sam').  'Try90' ==> #('Try' 90)
	BUT NOTE: 'Sam' ==> #('Sam' 0), and '90' ==> #('' 90)  ie, (<string> <integer>)."
"
	'43Sam' asRope splitInteger.   ==> #(43 Rope('Sam'))
"
	| pos |
	(pos _ self findFirst: [:d | d isDigit not]) = 0 ifTrue: [^ Array with: '' with: self asNumber].
	self first isDigit ifTrue: [
		^ Array with: (self copyFrom: 1 to: pos - 1) asNumber 
				with: (self copyFrom: pos to: self size)].
	(pos _ self findFirst: [:d | d isDigit]) = 0 ifTrue: [^ Array with: self with: 0].
	^ Array with: (self copyFrom: 1 to: pos - 1)
			with: (self copyFrom: pos to: self size) asNumber! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:45'!
squeezedTo: n
	"
Examples:
	Do nothing:
		'This one is a rather long phrase' squeezedTo: 32

	1-remove blanks (result can be shorter than asked):
		'This one is a rather long phrase' squeezedTo: 30

	2-remove necessary trailing vowels
		'This one is a rather long phrase' squeezedTo: 24

	3-truncate as needed (and add ellipsis)
		'This one is a rather long phrase' squeezedTo: 15

	4-avoid ellipsis
		'This one is a rather long phrase' squeezedTo: 5
	"
	| vowelCount read write i char allowedVowels str desiredSize postFix j |
	str := self.
	desiredSize := n.
	str size <= n ifTrue: [^str].
	str := str asCamelCase.
	str size <= n ifTrue: [^str].
	postFix := ''.
	desiredSize := n - postFix size.
	vowelCount := str
		inject: 0
		into: [:prev :each | each isVowel ifTrue: [prev + 1] ifFalse: [prev]].
	str size - vowelCount <= desiredSize
		ifTrue: [allowedVowels := vowelCount - (str size - desiredSize)]
		ifFalse: [
			allowedVowels := 0.
			postFix := '...'.
			n - postFix size < 5 ifTrue: [postFix := ''].
			desiredSize := n - postFix size].

	read := str readStream.
	write := String new writeStream.
	i := 0.
	j := 0.
	[read atEnd not and: [j < desiredSize]] whileTrue: [
		char := read next.
		(char isVowel not or: [i < allowedVowels]) ifTrue: [
			char isVowel ifTrue: [i := i + 1].
			write nextPut: char.
			j := j + 1]].
	str := write contents , postFix.
	^ str asRope! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:47'!
stemAndNumericSuffix
	"Parse the receiver into a string-valued stem and a numeric-valued suffix."

	| stem suffix position |

	stem _ self.
	suffix _ 0.
	position _ 1.
	[stem endsWithDigit and: [stem size > 1]] whileTrue:
		[suffix _  stem last digitValue * position + suffix.
		position _ position * 10.
		stem _ stem copyFrom: 1 to: stem size - 1].
	^ Array with: stem with: suffix

"'Fred2305' stemAndNumericSuffix"! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 17:03'!
subStrings: separators 
	"Answer an array containing the substrings in the receiver separated 
	by the elements of separators."
	| result sourceStream subStringStream |
	((separators isKindOf: String) 
	  or: [(separators isKindOf: Rope) 
		or: [ separators allSatisfy: [ :element | element isKindOf: Character ]]])
	ifFalse: [ ^ self error: 'separators must be Characters.' ].
	
	sourceStream := self readStream.
	result := OrderedCollection new.
	subStringStream := String new writeStream.
	[ sourceStream atEnd ] whileFalse: [
		| char |
		char := sourceStream next.
		(separators includes: char)
			ifTrue: [
				subStringStream isEmpty ifFalse: [
					result add: subStringStream contents asRope.
					subStringStream := String new writeStream ] ]
			ifFalse: [
				subStringStream nextPut: char ] ].
	subStringStream isEmpty ifFalse: [
		result add: subStringStream contents asRope ].
	^ result asArray! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 16:58'!
substrings
	"Answer an array of the substrings that compose the receiver."
	| result end beginning separators |

	result  :=  WriteStream on: (Array new: 10).
	end     :=  0.
	separators := String caseSensitiveNonSeparators.
	"find one substring each time through this loop"
	[ 
		"find the beginning of the next substring"
		beginning _ self indexOfAnyOf: separators startingAt: end+1 ifAbsent: nil.
		beginning notNil ] 
	whileTrue: [
		"find the end"
		end _ self indexOfAnyOf: separators startingAt: beginning ifAbsent: [ self size + 1 ].
		end _ end - 1.

		result nextPut: (self copyFrom: beginning to: end).
	].

	^result contents! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 21:51'!
surroundedBySingleQuotes
	"Answer the receiver with leading and trailing quotes.  "

	^ $' asRope , self , $' asRope! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 20:29'!
translateFrom: start  to: stop  table: table
	"translate the characters in the string by the given table, in place"
	^Rope translate: self  from: start to: stop table: table! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 19:46'!
translateWith: table
	"translate the characters in the string by the given table"
	
	^self translateFrom: 1 to: (self size) table: table! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 17:29'!
trimBoth
	"Trim separators from both sides of the receiving string."
	
	^ self trimBoth: [ :char | char isSeparator ]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 17:29'!
trimBoth: aBlock
	"Trim characters satisfying the condition given in aBlock from both sides of the receiving string."

	^ self trimLeft: aBlock right: aBlock! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 17:28'!
trimLeft
	"Trim separators from the left side of the receiving string."
	
	^ self trimLeft: [ :char | char isSeparator ] ! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 17:25'!
trimLeft: aBlock
	"Trim characters satisfying the condition given in aBlock from the left side of the receiving string."
	
	^ self trimLeft: aBlock right: [ :char | false ]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 17:25'!
trimLeft: aLeftBlock right: aRightBlock
	"Trim characters satisfying the condition given in aLeftBlock from the left side and aRightBlock from the right sides of the receiving string."

	| left right |
	left := 1.
	right := self size.
	
	[ left <= right and: [ aLeftBlock value: (self at: left) ] ]
		whileTrue: [ left := left + 1 ].
		
	[ left <= right and: [ aRightBlock value: (self at: right) ] ]
		whileTrue: [ right := right - 1 ].
		
	^ self copyFrom: left to: right! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 17:28'!
trimRight
	"Trim separators from the right side of the receiving string."
	
	^ self trimRight: [ :char | char isSeparator ]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/23/2013 17:26'!
trimRight: aBlock
	"Trim characters satisfying the condition given in aBlock from the right side of the receiving string."
	
	^ self trimLeft: [ :char | false ] right: aBlock! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:04'!
truncateTo: smallSize
	"return myself or a copy shortened to smallSize"

	^ self size <= smallSize
		ifTrue:
			[self]
		ifFalse:
			[self copyFrom: 1 to: smallSize]! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:04'!
truncateWithElipsisTo: maxLength
	"Return myself or a copy suitably shortened but with elipsis added"

	^ self size <= maxLength
		ifTrue:
			[self]
		ifFalse:
			[(self copyFrom: 1 to: (maxLength - 3)), '...']


"
	'truncateWithElipsisTo:' truncateWithElipsisTo: 20
"! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:05'!
unparenthetically
	"If the receiver starts with (..( and ends with matching )..), strip them"

	| curr |
	curr _ self.
	[((curr first == $() and: [curr last == $)])] whileTrue:
		[curr _ curr copyFrom: 2 to: (curr size - 1)].

	^ curr

"

'((fred the bear))' unparenthetically

"
		! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:05'!
unzipped
	| magic1 magic2 |
	magic1 _ (self at: 1) asInteger.
	magic2 _ (self at: 2) asInteger.
	(magic1 = 16r1F and:[magic2 = 16r8B]) ifFalse:[^self].
	^(GZipReadStream on: self) upToEnd! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:06'!
withBlanksCondensed
	"Return a copy of the receiver with leading/trailing blanks removed
	 and consecutive white spaces condensed as a single space."

	| trimmed lastWasBlank |
	trimmed _ self withBlanksTrimmed.
	^(String streamContents: [ :stream |
		lastWasBlank _ false.
		trimmed do: [ :c |
			c isSeparator
				ifTrue: [ lastWasBlank ifFalse: [ stream space ]]
				ifFalse: [ stream nextPut: c ].
			lastWasBlank _ c isSeparator ]]) asRope

	" 
	' abc  d   ' asRope withBlanksCondensed
	' abc  d
	s
	as   zz 	q 			q' asRope withBlanksCondensed
	"! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:07'!
withBlanksTrimmed
	"Return a copy of the receiver from which leading and trailing blanks have been trimmed."

	| first |
	first _ self findFirst: [:c | c isSeparator not].
	first = 0 ifTrue: [^ '' asRope].  "no non-separator character"
	^ self
		copyFrom: first
		to: (self findLast: [:c | c isSeparator not])

"
	 ' abc  d   ' asRope withBlanksTrimmed
"
! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:08'!
withCuisLineEndings
	"assume the string is textual, and that CR, LF, and CRLF are all 
	valid line endings.  Replace each occurence with a single Lf
	('aLine', String crlfString, 'anotherOne') withCuisLineEndings
	"

	^ self withLineEndings: Rope newLineString! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:13'!
withFirstCharacterDownshifted
	"Answer an object like the receiver but with first character downshifted if necesary"
"
	'MElViN' asString withFirstCharacterDownshifted.
	#Will asRope withFirstCharacterDownshifted
"
	self isEmpty ifTrue: [^ self].
	^(self at: 1 put: (self at: 1) asLowercase)
! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:14'!
withLineEndings: lineEndingString
	"assume the string is textual, and that CR, LF, and CRLF are all valid line endings. 
	Answer a new String, where each occurence with is replaced with lineEndingString"
	| cr lf crlf inPos outPos outString lineEndPos newOutPos lineEndingSize |
	cr _ Character crCharacter.
	lf _ Character lfCharacter.
	crlf _ CharacterSet new.
	crlf add: cr; add: lf.

	inPos _ 1.
	outPos _ 1.
	lineEndingSize _ lineEndingString size.
	"This could be extremely inefficient if lineEndingString size > 1"
	outString _ String new: self size * lineEndingSize.

	[
		lineEndPos _ self indexOfAnyOf: crlf startingAt: inPos ifAbsent: [0].
		lineEndPos ~= 0 ] whileTrue: [
			newOutPos _ outPos + (lineEndPos - inPos).
			outString replaceFrom: outPos to: newOutPos - 1 with: self startingAt: inPos.
			1 to: lineEndingSize do: [ :i |
				outString at: newOutPos put: (lineEndingString at: i).
				newOutPos _ newOutPos + 1 ].
			outPos _ newOutPos.
			((self at: lineEndPos) = cr and: [ lineEndPos < self size and: [ (self at: lineEndPos+1) = lf ] ]) ifTrue: [
				"CRLF ending"
				inPos _ lineEndPos + 2 ]
			ifFalse: [ 
				"CR or LF ending"
				inPos _ lineEndPos + 1 ]. ].

	"no more line endings.  copy the rest"
	newOutPos _ outPos + (self size - inPos).
	outString replaceFrom: outPos to: newOutPos with: self startingAt: inPos.

	^ (outString copyFrom: 1 to: newOutPos) asRope! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:15'!
withNewLines
	"Return a copy of the receiver in which backslash (\) characters have been replaced with newLine (i.e. Lf)."

	^ self collect: [ :c | c = $\ ifTrue: [ Character newLineCharacter ] ifFalse: [ c ]].! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:25'!
withNoLineLongerThan: aNumber
	"Answer a string with the same content as receiver, but rewrapped so that no line has more characters than the given number"
	
	"@@@ FIXME: We can do much better than this using Ropes @@@"
	| separators nonSeparators |
	separators       := String caseSensitiveSeparators.
	nonSeparators := String caseSensitiveNonSeparators.
	aNumber isNumber not | (aNumber < 1) ifTrue: [self error: 'too narrow'].
	^(String
		streamContents: [ :stream |
			self lineIndicesDo: [ :start :endWithoutDelimiters :end |
				| pastEnd lineStart |
				pastEnd := endWithoutDelimiters + 1.
				"eliminate spaces at beginning of line"
				lineStart := (self indexOfAnyOf: nonSeparators startingAt: start ifAbsent: [pastEnd]) min: pastEnd.
				[| lineStop lineEnd spacePosition |
				lineEnd := lineStop  := lineStart + aNumber min: pastEnd..
				spacePosition := lineStart.
				[spacePosition < lineStop] whileTrue: [
					spacePosition := self indexOfAnyOf: separators startingAt: spacePosition + 1 ifAbsent: [pastEnd].
					spacePosition <= lineStop ifTrue: [lineEnd := spacePosition].
				].
				"split before space or before lineStop if no space"
				stream nextPutAll: (self copyFrom: lineStart to: lineEnd - 1).
				"eliminate spaces at beginning of next line"
				lineStart := self indexOfAnyOf: nonSeparators startingAt: lineEnd ifAbsent: [pastEnd].
				lineStart <= endWithoutDelimiters ]
					whileTrue: [stream newLine].
				stream nextPutAll: (self copyFrom: pastEnd to: end) ] ]
		estimatedSize: self size * (aNumber + 1) // aNumber "provision for supplementary line breaks"
		) asRope! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:26'!
withoutLeadingDigits
	"Answer the portion of the receiver that follows any leading series of digits and blanks.  If the receiver consists entirely of digits and blanks, return an empty string.
	See withoutTrailingDigits"
	| firstNonDigit |
	firstNonDigit _ (self findFirst: [ :m | m isDigit not and: [ m ~~ $  ]]).
	^ firstNonDigit > 0
		ifTrue: [ self copyFrom: firstNonDigit  to: self size ]
		ifFalse: [ '' asRope ]

"
'234Whoopie' asRope withoutLeadingDigits
' 4321 BlastOff!!'  asRope withoutLeadingDigits
'wimpy'  asRope withoutLeadingDigits
'  89Ten 12   ' asRope withoutLeadingDigits
'78 92' asRope withoutLeadingDigits
'9876 and with several words 9876' asRope withoutLeadingDigits
' 123another one123 '  asRope withoutLeadingDigits
"! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:27'!
withoutTrailingBlanks
	"Return a copy of the receiver from which trailing blanks have been trimmed."

	| last |
	last _ self findLast: [:c | c isSeparator not].
	last = 0 ifTrue: [^ '' asRope].  "no non-separator character"
	^ self copyFrom: 1 to: last

"
	 ' abc  d   ' asRope withoutTrailingBlanks
"
! !

!Rope methodsFor: 'converting' stamp: 'KenD 2/22/2013 22:28'!
withoutTrailingDigits
	"Answer the portion of the receiver that precedes any trailing series of digits and blanks.  If the receiver consists entirely of digits and blanks, return an empty string.
	See #withoutLeadingDigits"
	| lastNonDigit |
	lastNonDigit _ (self findLast: [ :m | m isDigit not and: [ m ~~ $  ]]).
	^ lastNonDigit > 0
		ifTrue: [ self copyFrom: 1 to: lastNonDigit ]
		ifFalse: [ '' ]

"
'Whoopie234' asRope withoutTrailingDigits
'BlastOff!! 4321 ' asRope withoutTrailingDigits
'wimpy' asRope withoutTrailingDigits
'  89Ten 12   ' asRope withoutTrailingDigits
'78 92' asRope withoutTrailingDigits
'and with several words 9876' asRope withoutTrailingDigits
' 123another one123 ' asRope withoutTrailingDigits
"
! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/23/2013 13:39'!
at: index

	self subclassResponsibility ! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/23/2013 13:40'!
at: index put: aCharacter

	self subclassResponsibility ! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 19:58'!
byteSize
	"Answer number of byte-sized characters if taken as a String"
	^self size! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 19:59'!
do: aBlock toFieldNumber: aNumber
	"Considering the receiver as a holder of tab-delimited fields, evaluate aBlock on behalf of a field in this rope"

	| start end index |
	start _ 1.
	index _ 1.
	[start <= self size] whileTrue: 
		[end _ self indexOf: Character tab startingAt: start ifAbsent: [self size + 1].
		end _ end - 1.
		aNumber = index ifTrue:
			[aBlock value: (self copyFrom: start  to: end).
			^ self].
		index _ index + 1.
		start _ end + 2]

"
1 to: 6 do:
	[:aNumber |
		'fred	charlie	elmo		wimpy	friml' do:
			[:aField | Transcript cr; show: aField] toFieldNumber: aNumber]
"! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 19:59'!
endsWithDigit
	"Answer whether the receiver's final character represents a digit.  3/11/96 sw"

	^ self size > 0 and: [self last isDigit]! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:00'!
findAnySubStr: delimiters startingAt: start 
	"Answer the index of the character within the receiver, starting at start, that begins a substring matching one of the delimiters.  delimiters is an Array of Strings (Characters are permitted also).  If the receiver does not contain any of the delimiters, answer size + 1."

	| min ind |
	min _ self size + 1.
	delimiters do: [:delim |	"May be a char, a string of length 1, or a substring"
		delim class == Character 
			ifTrue: [ind _ self indexOfSubCollection: (String with: delim) 
						startingAt: start ifAbsent: [min]]
			ifFalse: [ind _ self indexOfSubCollection: delim 
						startingAt: start ifAbsent: [min]].
			min _ min min: ind].
	^ min! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:00'!
findBetweenSubStrs: delimiters
	"Answer the collection of String tokens that result from parsing self.  Tokens are separated by 'delimiters', which can be a collection of Strings, or a collection of Characters.  Several delimiters in a row are considered as just one separation."

	| tokens keyStart keyStop |
	tokens _ OrderedCollection new.
	keyStop _ 1.
	[keyStop <= self size] whileTrue:
		[keyStart _ self skipAnySubStr: delimiters startingAt: keyStop.
		keyStop _ self findAnySubStr: delimiters startingAt: keyStart.
		keyStart < keyStop
			ifTrue: [tokens add: (self copyFrom: keyStart to: (keyStop - 1))]].
	^tokens! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:01'!
findCloseParenthesisFor: startIndex
	"assume (self at: startIndex) is $(.  Find the matching $), allowing parentheses to nest."
	" '(1+(2-3))-3.14159' findCloseParenthesisFor: 1 "
	" '(1+(2-3))-3.14159' findCloseParenthesisFor: 4 "
	| pos nestLevel |
	pos := startIndex+1.
	nestLevel := 1.
	[ pos <= self size ] whileTrue: [
		(self at: pos) = $( ifTrue: [ nestLevel := nestLevel + 1 ].
		(self at: pos) = $) ifTrue: [ nestLevel := nestLevel - 1 ].
		nestLevel = 0 ifTrue: [ ^pos ].
		pos := pos + 1.
	].
	^self size + 1! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:01'!
findDelimiters: delimiters startingAt: start 
	"Answer the index of the character within the receiver, starting at start, that matches one of the delimiters. If the receiver does not contain any of the delimiters, answer size + 1."

	start to: self size do: [:i |
		delimiters do: [:delim | delim = (self at: i) ifTrue: [^ i]]].
	^ self size + 1! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:01'!
findLastOccurrenceOfString: subString startingAt: start 
	"Answer the index of the last occurrence of subString within the receiver, starting at start. If 
	the receiver does not contain subString, answer 0.  Case-sensitive match used."

	| last now |
	last := self findString: subString startingAt: start.
	last = 0 ifTrue: [^ 0].
	[last > 0] whileTrue:
		[now := last.
		last := self findString: subString startingAt: last + 1].

	^ now
! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:01'!
findString: subString
	"Answer the index of subString within the receiver, starting at start. If 
	the receiver does not contain subString, answer 0."
	^self findString: subString startingAt: 1.! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:02'!
findString: subString startingAt: start 
	"Answer the index of subString within the receiver, starting at start. If 
	the receiver does not contain subString, answer 0."

	^ self findSubstring: subString in: self startingAt: start matchTable: (String caseSensitiveOrder)! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:02'!
findString: key startingAt: start caseSensitive: caseSensitive
	"Answer the index in this String at which the substring key first occurs, at or beyond start.  The match can be case-sensitive or not.  If no match is found, zero will be returned."

	caseSensitive
	ifTrue: [^ self findSubstring: key in: self startingAt: start matchTable: (String caseSensitiveOrder)]
	ifFalse: [^ self findSubstring: key in: self startingAt: start matchTable: (String caseInsensitiveOrder)]! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:34'!
findSubstring: key in: body startingAt: start matchTable: matchTable
	"Answer the index in the string body at which the substring key first occurs, at or beyond start.  The match is determined using matchTable, which can be used to effect, eg, case-insensitive matches.  If no match is found, zero will be returned.
"
	| index |
	key size = 0 ifTrue: [^ 0].
	start to: body size - key size + 1 do:
		[:startIndex |
		index _ 1.
			[(matchTable at: (body at: startIndex+index-1) asciiValue + 1)
				= (matchTable at: (key at: index) asciiValue + 1)]
				whileTrue:
				[index = key size ifTrue: [^ startIndex].
				index _ index+1]].
	^ 0
"
' ' findSubstring: 'abc' in: 'abcdefabcd' startingAt: 1 matchTable: CaseSensitiveOrder 1
' ' findSubstring: 'abc' in: 'abcdefabcd' startingAt: 2 matchTable: CaseSensitiveOrder 7
' ' findSubstring: 'abc' in: 'abcdefabcd' startingAt: 8 matchTable: CaseSensitiveOrder 0
' ' findSubstring: 'abc' in: 'abcdefABcd' startingAt: 2 matchTable: CaseSensitiveOrder 0
' ' findSubstring: 'abc' in: 'abcdefABcd' startingAt: 2 matchTable: CaseInsensitiveOrder 7
"! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:03'!
findTokens: delimiters
	"Answer the collection of tokens that result from parsing self.  Return strings between the delimiters.  Any character in the Collection delimiters marks a border.  Several delimiters in a row are considered as just one separation.  Also, allow delimiters to be a single character."

	| tokens keyStart keyStop separators |

	tokens _ OrderedCollection new.
	separators _ delimiters class == Character 
		ifTrue: [Array with: delimiters]
		ifFalse: [delimiters].
	keyStop _ 1.
	[keyStop <= self size] whileTrue:
		[keyStart _ self skipDelimiters: separators startingAt: keyStop.
		keyStop _ self findDelimiters: separators startingAt: keyStart.
		keyStart < keyStop
			ifTrue: [tokens add: (self copyFrom: keyStart to: (keyStop - 1))]].
	^tokens! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:03'!
findTokens: delimiters includes: subString
	"Divide self into pieces using delimiters.  Return the piece that includes subString anywhere in it.  Is case sensitive (say asLowercase to everything beforehand to make insensitive)."

^ (self findTokens: delimiters) 
	detect: [:str | (str includesSubString: subString)] 
	ifNone: nil! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:03'!
findTokens: delimiters keep: keepers
	"Answer the collection of tokens that result from parsing self.  The tokens are seperated by delimiters, any of a string of characters.  If a delimiter is also in keepers, make a token for it.  (Very useful for carriage return.  A sole return ends a line, but is also saved as a token so you can see where the line breaks were.)"

	| tokens keyStart keyStop |
	tokens _ OrderedCollection new.
	keyStop _ 1.
	[keyStop <= self size] whileTrue:
		[keyStart _ self skipDelimiters: delimiters startingAt: keyStop.
		keyStop to: keyStart-1 do: [:ii | 
			(keepers includes: (self at: ii)) ifTrue: [
				tokens add: (self copyFrom: ii to: ii)]].	"Make this keeper be a token"
		keyStop _ self findDelimiters: delimiters startingAt: keyStart.
		keyStart < keyStop
			ifTrue: [tokens add: (self copyFrom: keyStart to: (keyStop - 1))]].
	^tokens! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:04'!
findWordStart: key startingAt: start
	| ind |
	"HyperCard style searching.  Answer the index in self of the substring key, when that key is preceeded by a separator character.  Must occur at or beyond start.  The match is case-insensitive.  If no match is found, zero will be returned."

	ind _ start.
	[ind _ self findSubstring: key in: self startingAt: ind matchTable: (String caseInsensitiveOrder).
	ind = 0 ifTrue: [^ 0].	"not found"
	ind = 1 ifTrue: [^ 1].	"First char is the start of a word"
	(self at: ind-1) isSeparator] whileFalse: [ind _ ind + 1].
	^ ind	"is a word start"! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 19:56'!
first
	"Answer first character"
	^self at: 1! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:04'!
includesSubString: subString

	^ (self findString: subString startingAt: 1) > 0! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:09'!
includesSubstring: aString caseSensitive: caseSensitive
	
	^ (self findString: aString startingAt: 1 caseSensitive: caseSensitive) > 0! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:10'!
indexOf: aCharacter

	(aCharacter class == Character) ifFalse: [^ 0].
	^ Rope indexOfAscii: aCharacter asciiValue inString: self startingAt: 1! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:10'!
indexOf: aCharacter startingAt: start

	(aCharacter class == Character) ifFalse: [^ 0].
	^ Rope indexOfAscii: aCharacter asciiValue inString: self startingAt: start! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:11'!
indexOf: aCharacter  startingAt: start  ifAbsent: aBlock
	| ans |
	(aCharacter class == Character) ifFalse: [ ^ aBlock value ].
	ans _ Rope indexOfAscii: aCharacter asciiValue inString: self  startingAt: start.
	ans = 0
		ifTrue: [ ^ aBlock value ]
		ifFalse: [ ^ ans ]! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:11'!
indexOfAnyOf: aCharacterSet

	"Answer the index of the first character in the given set.  Answer 0 if none are found"
	^self indexOfAnyOf: aCharacterSet  startingAt: 1! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:11'!
indexOfAnyOf: aCharacterSet  ifAbsent: aBlock

	"returns the index of the first character in the given set.  Returns the evaluation of aBlock if none are found"
	^self indexOfAnyOf: aCharacterSet  startingAt: 1  ifAbsent: aBlock! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:11'!
indexOfAnyOf: aCharacterSet  startingAt: start

	"returns the index of the first character in the given set, starting from start.  Returns 0 if none are found"
	^self indexOfAnyOf: aCharacterSet  startingAt: start  ifAbsent: [ 0 ]! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:12'!
indexOfAnyOf: aCharacterSet  startingAt: start ifAbsent: aBlock
	"returns the index of the first character in the given set, starting from start"

	| answer |
	answer _ Rope findFirstInString: self inSet: aCharacterSet byteArrayMap startingAt: start.

	^answer = 0 
		ifTrue: [ aBlock value ]
		ifFalse: [ answer]! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:12'!
indexOfSubCollection: sub startingAt: start ifAbsent: exceptionBlock

	| index |
	index _ self findSubstring: sub in: self startingAt: start matchTable: (String caseSensitiveOrder).
	index = 0 ifTrue: [^ exceptionBlock value].
	^ index! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 19:56'!
last
	"Answer last character"
	^self at: self size! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:13'!
lineCount

	"Answer the number of lines represented by the receiver, where every cr adds one line. "
	| count |
	count _ 0.
	self lineIndicesDo: [ :start :endWithoutDelimiters :end | count _ count + 1 ].
	
	^ count

"
'Fred
the
Bear' lineCount
"! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:15'!
lineIndicesDo: aBlock

	"execute aBlock with 3 arguments for each line:
	- start index of line
	- end index of line without line delimiter
	- end index of line including line delimiter(s) CR, LF or CRLF"
	
	| start end endWithoutDelimiters |
	start _ 1.
	[
		end _ self indexOfAnyOf: (String caseSensitiveLineEnders) startingAt: start ifAbsent: [ 0 ].
		end = 0
			ifTrue: [
				"Last line was found. Evaluate and exit.
				Note. If last char in receiver is a line separator, there's an extra empty line"
				endWithoutDelimiters _ end _ self size.
				aBlock value: start value: endWithoutDelimiters value: end.
				^self ].

		"Account for CrLf sequence"
		endWithoutDelimiters _ end - 1.
		(end < self size
			and: [(self at: end + 1) = Character lfCharacter
			and: [(self at: end) = Character crCharacter ]])
				ifTrue: [ end _ end + 1].

		aBlock value: start value: endWithoutDelimiters value: end.
		start _ end + 1 ] repeat! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:16'!
lineNumber: anIndex
	"Answer a string containing the characters in the given line number. "
	| i |
	i _ 1.
	self lineIndicesDo: [ :start :endWithoutDelimiters :end |
		i = anIndex ifTrue: [
			^ self copyFrom: start to: endWithoutDelimiters ].
		i _ i + 1 ].
	^nil
	
"
'Fred
the
Bear' asRope lineNumber: 3
".! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:16'!
lines
	"Answer an array of lines composing this receiver without the line ending delimiters."

	^Array
		streamContents: [ :lines | self linesDo: [ :aLine | lines nextPut: aLine ]]
		estimatedSize: (self size // 60 max: 16)! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:17'!
linesDo: aBlock
	"execute aBlock with each line in this string.  The terminating CR's are not included in what is passed to aBlock"
	
	self lineIndicesDo: [ :start :endWithoutDelimiters :end |
		aBlock value: (self copyFrom: start  to: endWithoutDelimiters) ]
		! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/23/2013 16:53'!
numArgs 
	"Answer either the number of arguments that the receiver would take if considered a selector.  Answer -1 if it couldn't be a selector. It is intended mostly for the assistance of spelling correction."

	| firstChar numColons start ix |
	self size = 0 ifTrue: [^ -1].
	firstChar := self at: 1.
	(firstChar isLetter or: [ firstChar = $_]) ifTrue:
		["Fast reject if any chars are non-alphanumeric
		NOTE: fast only for Byte things - Broken for Wide"
		self class isBytes
			ifTrue: [(self findSubstring: '~' in: self startingAt: 1 matchTable: (String tokenish)) > 0 ifTrue: [^ -1]]
			ifFalse: [2 to: self size do: [:i | (self at: i) tokenish ifFalse: [^ -1]]].
		"Fast colon count"
		numColons := 0.  start := 1.
		[(ix := self indexOf: $: startingAt: start) > 0]
			whileTrue:
				[(ix = start or: [(self at: start) isDigit]) ifTrue: [^-1].
				numColons := numColons + 1.
				start := ix + 1].
		numColons = 0 ifTrue: [^ 0].
		self last = $:
			ifTrue: [^ numColons]
			ifFalse: [^ -1]].
	"Test case of binary selector, if self allSatisfy: #isSpecial (inlined for speed)"
	1 to: self size do: [:i | (self at: i) isSpecial ifFalse: [^ -1]].
	^1! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:17'!
skipAnySubStr: delimiters startingAt: start 
	"Answer the index of the last character within the receiver, starting at start, that does NOT match one of the delimiters. delimiters is a Array of substrings (Characters also allowed).  If the receiver is all delimiters, answer size + 1."
	| any this ind ii |
	ii _ start-1.
	[(ii _ ii + 1) <= self size] whileTrue: [ "look for char that does not match"
		any _ false.
		delimiters do: [:delim |
			delim class == Character 
				ifTrue: [(self at: ii) == delim ifTrue: [any _ true]]
				ifFalse: ["a substring"
					delim size > (self size - ii + 1) ifFalse: "Here's where the one-off error was."
						[ind _ 0.
						this _ true.
						delim do: [:dd | 
							dd == (self at: ii+ind) ifFalse: [this _ false].
							ind _ ind + 1].
						this ifTrue: [ii _ ii + delim size - 1.  any _ true]]
							ifTrue: [any _ false] "if the delim is too big, it can't match"]].
		any ifFalse: [^ ii]].
	^ self size + 1! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/22/2013 20:17'!
skipDelimiters: delimiters startingAt: start 
	"Answer the index of the character within the receiver, starting at start, that does NOT match one of the delimiters. If the receiver does not contain any of the delimiters, answer size + 1.  Assumes the delimiters to be a non-empty string."

	start to: self size do: [:i |
		delimiters detect: [:delim | delim = (self at: i)]
				ifNone: [^ i]].
	^ self size + 1! !

!Rope methodsFor: 'accessing' stamp: 'KenD 2/23/2013 07:43'!
species

	^Rope! !

!Rope methodsFor: 'enumerating' stamp: 'KenD 2/22/2013 21:29'!
collect: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect the resulting values into a collection like the receiver. Answer 
	the new collection."

	| result |
	result _ String new: self size.
	1 to: self size do:
		[:index | result at: index put: (aBlock value: (self at: index))].
	^ result asRope! !

!Rope methodsFor: 'enumerating' stamp: 'KenD 2/22/2013 21:38'!
select: aBlock 
	"Refer to the comment in Collection|select:."
	| aStream |
	aStream _ WriteStream on: (String new: self size).
	1 to: self size do: 
		[:index |
		(aBlock value: (self at: index))
			ifTrue: [aStream nextPut: (self at: index)]].
	^ aStream contents asRope! !

!Rope methodsFor: 'enumerating' stamp: 'KenD 8/22/2016 17:11:29'!
size

	^0! !

!Rope methodsFor: 'enumerating' stamp: 'KenD 2/22/2013 20:19'!
tabDelimitedFieldsDo: aBlock
	"Considering the receiver as a holder of tab-delimited fields, evaluate execute aBlock with each field in this string.  The separatilng tabs are not included in what is passed to aBlock"

	| start end |
	"No senders but was useful enough in earlier work that it's retained for the moment."
	start _ 1.
	[start <= self size] whileTrue: 
		[end _ self indexOf: Character tab startingAt: start ifAbsent: [self size + 1].
		end _ end - 1.
		aBlock value: (self copyFrom: start  to: end).
		start _ end + 2]

"
'fred	charlie	elmo		2' asRope  tabDelimitedFieldsDo: [:aField |  Transcript newLine; show: aField]
"! !

!Rope methodsFor: 'private' stamp: 'KenD 2/23/2013 16:45'!
compare: rope1 with: rope2 collated: order
	"Return 1, 2 or 3, if rope1 is <, =, or > rope2, with the collating order of characters given by the order array."

	| len1 len2 c1 c2 |

	len1 _ rope1 size.
	len2 _ rope2 size.
	1 to: (len1 min: len2) do:
		[:i |
		c1 _ order at: (rope1 at: i) asciiValue + 1.
		c2 _ order at: (rope2 at: i) asciiValue + 1.
		c1 = c2 ifFalse: 
			[c1 < c2 ifTrue: [^ 1] ifFalse: [^ 3]]].
	len1 = len2 ifTrue: [^ 2].
	len1 < len2 ifTrue: [^ 1] ifFalse: [^ 3].
! !

!Rope methodsFor: 'private' stamp: 'KenD 2/22/2013 20:25'!
correctAgainstEnumerator: wordBlock continuedFrom: oldCollection
	"The guts of correction, instead of a wordList, there is a block that should take another block and enumerate over some list with it."

	| choices scoreMin results score maxChoices |
	scoreMin _ self size // 2 min: 3.
	maxChoices _ 10.
	choices _ oldCollection
		ifNil: [ SortedCollection sortBlock: [ :x :y | x value > y value ] ].
	wordBlock
		ifNil: [
			results _ OrderedCollection new.
			1 to: (maxChoices min: choices size) do: [ :i | results add: (choices at: i) key ] ]
		ifNotNil: [
			wordBlock value: [ :word |
				(score _ self alike: word) >= scoreMin ifTrue: [
					choices add: (Association key: word value: score).
						(choices size >= maxChoices) ifTrue: [ scoreMin _ (choices at: maxChoices) value] ] ].
			results _ choices ].
	^ results! !

!Rope methodsFor: 'private' stamp: 'KenD 8/22/2016 17:08:33'!
defaultElement

	^ Character space! !

!Rope methodsFor: 'private' stamp: 'KenD 2/22/2013 20:26'!
evaluateExpression: aStringOrRope parameters: aCollection 
	"private - evaluate the expression aStringOrRope with  
	aCollection as the parameters and answer the  
	evaluation result as an string"
	| index |
	index := ('0' asRope , aStringOrRope) asNumber.

	index isZero
		ifTrue: [^ '[invalid subscript: {1}]' format: {aStringOrRope}].

	index > aCollection size
		ifTrue: [^ '[subscript is out of bounds: {1}]' format: {aStringOrRope}].

	^ (aCollection at: index) asString! !

!Rope methodsFor: 'private' stamp: 'KenD 2/22/2013 20:26'!
getEnclosedExpressionFrom: aStream 
	"private - get the expression enclosed between '{' and 
	'}' and remove all the characters from the stream"
	| result currentChar |
	result := String new writeStream.

	[aStream atEnd 
		or: [(currentChar := aStream next) == $}]]
		whileFalse: [result nextPut: currentChar].

	^ result contents withBlanksTrimmed asRope! !

!Rope methodsFor: 'private' stamp: 'KenD 2/12/2013 17:14'!
isBalanced
	"Answer if the Rope is balanced"

	| fib |
	fib := Rope fibonacci.
	(self depth >= (fib size - 2))
	ifTrue:  [^false]
	ifFalse: [^ (fib at: (self depth + 2)) <= self size]! !

!Rope methodsFor: 'private' stamp: 'KenD 4/11/2013 13:05'!
rebalance
	"Answer a new balanced rope with my data"

	| leafNodes toExamine |
	leafNodes  := OrderedCollection new.
	toExamine := OrderedCollection new.
	toExamine addLast: self.
	"depth first"
	[toExamine size > 0] whileTrue: [
		| node |
		node := toExamine removeFirst.
		(node class == ConcatRope)
		ifTrue: [
			toExamine addFirst: node rightRope.
			toExamine addFirst: node leftRope
		]
		ifFalse: [leafNodes addLast: node]
	].
	^ Rope merge: leafNodes start: 1 end: (leafNodes size).! !

!Rope methodsFor: 'private' stamp: 'KenD 3/14/2013 20:20'!
replaceFrom: start to: stop with: replacement startingAt: repStart 
		"Answer a new rope with the replacement.
		Nota Bene: The String method with this name is destructive!!!!"
		| repRope |
		repRope := replacement asRope.
		
		self halt: 
	'The String method with this name is destructive. The Rope version is not, Use RopeWrapper'.
		
		^ self copyReplaceFrom: start to: stop with: (repRope copyFrom: repStart to: (repRope size)).! !

!Rope methodsFor: 'displaying' stamp: 'KenD 2/22/2013 20:21'!
displayAt: aPoint 
	"Display the receiver as a DisplayText at aPoint on the display screen."

	self displayOn: Display at: aPoint! !

!Rope methodsFor: 'displaying' stamp: 'KenD 2/22/2013 20:20'!
displayOn: aDisplayMedium
	"Display the receiver on the given DisplayMedium.  5/16/96 sw"

	self displayOn: aDisplayMedium at: 0 @ 0! !

!Rope methodsFor: 'displaying' stamp: 'KenD 2/22/2013 20:21'!
displayOn: aDisplayMedium at: aPoint 
	"Show a representation of the receiver as a DisplayText at location aPoint on aDisplayMedium, using black-colored text."

	self displayOn: aDisplayMedium at: aPoint textColor: Color black! !

!Rope methodsFor: 'displaying' stamp: 'KenD 2/22/2013 20:21'!
displayOn: aDisplayMedium at: aPoint textColor: aColor
	"Show a representation of the receiver as a DisplayText at location aPoint on aDisplayMedium, rendering the text in the designated color"

	aDisplayMedium getCanvas drawString: self at: aPoint font: nil color: aColor! !

!Rope methodsFor: 'displaying' stamp: 'KenD 2/22/2013 20:21'!
displayProgressAt: aPoint from: minVal to: maxVal during: workBlock
	"Display this string as a caption over a progress bar while workBlock is evaluated.

EXAMPLE (Select next 6 lines and Do It)

['Now here''s some Real Progress'
	displayProgressAt: Sensor mousePoint
	from: 0 to: 100
	during: [:bar |
	1 to: 100 do: [:x | bar value: x.
			(Delay forMilliseconds: 100) wait]].] fork
	
['Now here''s some Real Progress'
	displayProgressAt: Sensor mousePoint
	from: 0 to: 10
	during: [:bar |
	1 to: 30 do: [:x | bar value: x \\ 11.
			(Delay forMilliseconds: 100) wait]]] fork

'Now here''s some Real Progress'
	displayProgressAt: Sensor mousePoint
	from: 0 to: 10
	during: [:bar |
	1 to: 30 do: [:x | bar value: nil.
			(Delay forMilliseconds: 200) wait]].

HOW IT WORKS (Try this in any other language :-)
Since your code (the last 2 lines in the above example) is in a block,
this method gets control to display its heading before, and clean up 
the screen after, its execution.
The key, though, is that the block is supplied with an argument,
named 'bar' in the example, which will update the bar image every 
it is sent the message value: x, where x is in the from:to: range.

The use of ProgressInitiationException allows for avoiding actual
progress display, by catching the exception.
"
	^ProgressInitiationException 
		display: self
		at: aPoint 
		from: minVal 
		to: maxVal 
		during: workBlock! !

!Rope methodsFor: 'debugging' stamp: 'KenD 2/11/2013 17:43'!
doesNotUnderstand: aMessage

	"See what is missing from Ropes"
	Transcript log: (String streamContents: [:s | aMessage storeOn: s]).
	
	"Do what a String would do"
	aMessage sendTo: (self asString)! !

!Rope methodsFor: 'user interface' stamp: 'KenD 2/22/2013 21:06'!
edit

	self editLabel: 'Text Editor'! !

!Rope methodsFor: 'user interface' stamp: 'KenD 2/22/2013 21:06'!
editLabel: labelString

	TextModel new contents: self; openLabel: labelString! !

!Rope methodsFor: 'printing' stamp: 'KenD 2/23/2013 14:04'!
encodeDoublingQuoteOn: aStream 
	"Print inside string quotes, doubling inbedded quotes."

	aStream print: $'.
	self do: [ :char  |
		aStream print: char.
		char == $' ifTrue: [aStream print: char]].
	aStream print: $'! !

!Rope methodsFor: 'printing' stamp: 'KenD 2/22/2013 20:22'!
isLiteral

	^false   "NB: a String returns true"! !

!Rope methodsFor: 'printing' stamp: 'KenD 2/22/2013 20:22'!
print

	Transcript show: self; newLine! !

!Rope methodsFor: 'printing' stamp: 'KenD 2/10/2013 19:56'!
printString

	^String streamContents: [:s | self printOn: s]! !

!Rope methodsFor: 'printing' stamp: 'KenD 2/9/2013 19:36'!
stringRepresentation

	^String streamContents: [:s | self do: [ :char | s nextPut: char]]! !

!Rope methodsFor: 'paragraph support' stamp: 'KenD 2/22/2013 21:04'!
encompassLine: anInterval
	"Return an interval that includes anInterval, and that comprises one or several whole paragraphs in the receiver.
	Answer starts at the position following a newLine (or eventually 1) and ends before a newLine (or eventually at self size)
	See also encompassParagraph:"
	| left rightCr rightNull |
	left _ (self lastIndexOf: Character newLineCharacter startingAt: anInterval first - 1 ifAbsent:[0]) + 1.
	rightCr _ (self indexOf: Character newLineCharacter startingAt: (anInterval last max: anInterval first) ifAbsent: [self size+1])-1.
	rightNull _ (self indexOf: Character null startingAt: (anInterval last max: anInterval first) ifAbsent: [self size+1])-1.
	^left to: (rightCr min: rightNull)! !

!Rope methodsFor: 'paragraph support' stamp: 'KenD 2/22/2013 21:05'!
encompassParagraph: anInterval
	"Return an interval that includes anInterval, and that comprises one or several whole paragraphs in the receiver.
	Answer starts at the position following a newLine (or eventually 1) and ends at a newLine (or eventually at self size).
	Look also for null characters. Never include null characters in the answer.
	See also #encompassLine:"
	| left rightCr rightNull |
	left _ (self lastIndexOf: Character newLineCharacter startingAt: anInterval first - 1 ifAbsent:[0]) + 1.
	rightCr _ (self indexOf: Character newLineCharacter startingAt: (anInterval last max: anInterval first) ifAbsent: [self size]).
	rightNull _ (self indexOf: Character null startingAt: (anInterval last max: anInterval first) ifAbsent: [self size+1])-1.
	^left to: (rightCr min: rightNull)! !

!Rope methodsFor: 'paragraph support' stamp: 'KenD 2/22/2013 21:05'!
endOfParagraphBefore: aNumber
	"Return the index of the last Character newLineCharacter before position aNumber, or zero if this is the first paragraph.
	'ddd' endOfParagraphBefore: 3
	'dd
	d' endOfParagraphBefore: 4
	"
	^ self lastIndexOf: Character newLineCharacter startingAt: aNumber - 1 ifAbsent: [ 0 ]! !

!Rope methodsFor: 'paragraph support' stamp: 'KenD 2/22/2013 21:05'!
indentationIfBlank: aBlock
	"Answer the number of leading tabs in the receiver.  If there are
	 no visible characters, pass the number of tabs to aBlock and return its value."
	| reader leadingTabs lastSeparator tab ch |
	tab _ Character tab.
	reader _ ReadStream on: self.
	leadingTabs _ 0.
	[ reader atEnd not and: [ (ch _ reader next) == tab ]] whileTrue: [
		leadingTabs _ leadingTabs + 1 ].
	lastSeparator _ leadingTabs + 1.
	[ reader atEnd not and: [
		ch isSeparator and: [ ch isLineSeparator not ]]] whileTrue: [
			lastSeparator _ lastSeparator + 1.
			ch _ reader next ].
	lastSeparator = self size | (ch notNil and: [ch isLineSeparator]) ifTrue: [
		^ aBlock value: leadingTabs ].
	^ leadingTabs! !

!Rope methodsFor: 'formatting' stamp: 'KenD 2/22/2013 21:07'!
format: aCollection 
	"format the receiver with aCollection  
	 
	simplest example:  
	'foo {1} bar' format: {Date today}.
	 
	complete example:  
	'\{ \} \\ foo {1} bar {2}' format: {12. 'string'}.  
	"
	| result stream |
	result := String new writeStream.
	stream := self readStream.

	[stream atEnd]
		whileFalse: [| currentChar | 
			currentChar := stream next.
			currentChar == ${
				ifTrue: [| expression | 
					expression := self getEnclosedExpressionFrom: stream.
					result
						nextPutAll: (self evaluateExpression: expression parameters: aCollection)]
				ifFalse: [
					currentChar == $\
						ifTrue: [stream atEnd
								ifFalse: [result nextPut: stream next]]
						ifFalse: [result nextPut: currentChar]]].

	^ result contents asRope! !

!Rope methodsFor: 'testing' stamp: 'KenD 2/22/2013 20:46'!
hasAccents
	"whether the receiver has any accented character"
	self do: [ :c | c isAccented ifTrue: [^ true]].
	^ false! !

!Rope methodsFor: 'testing' stamp: 'KenD 2/22/2013 20:58'!
hasContentsInExplorer

	^false! !

!Rope methodsFor: 'testing' stamp: 'KenD 2/23/2013 16:49'!
isAllDigits
	"whether the receiver is composed entirely of digits and has at least one digit"

	self do: [:c | c isDigit ifFalse: [^ false]].
	self ifEmpty: [^false].
      ^ true! !

!Rope methodsFor: 'testing' stamp: 'KenD 2/22/2013 20:58'!
isAllSeparators
	"whether the receiver is composed entirely of separators"
	self do: [ :c | c isSeparator ifFalse: [ ^false ] ].
	^true! !

!Rope methodsFor: 'testing' stamp: 'KenD 2/22/2013 21:03'!
isString
	"@@This is called in a lot of places!!!!@@@"
	"See what is missing from Ropes"
	Transcript log: 'isString called on a Rope'.

	^ false "NB: strings return true"! !

!Rope methodsFor: 'testing' stamp: 'KenD 2/22/2013 21:02'!
lastSpacePosition
	"Answer the character position of the final space or other separator character in the receiver, and 0 if none"
	self size to: 1 by: -1 do:
		[:index | ((self at: index) isSeparator) ifTrue: [^ index]].
	^ 0

"
'fred the bear' lastSpacePosition
'ziggie' lastSpacePosition
'elvis ' lastSpacePosition
'wimpy  ' lastSpacePosition
'' lastSpacePosition
"! !

!Rope methodsFor: 'testing' stamp: 'KenD 2/22/2013 20:17'!
startsWithDigit
	"Answer whether the receiver's first character represents a digit"

	^ self size > 0 and: [self first isDigit]! !

!Rope methodsFor: 'stream support' stamp: 'KenD 3/6/2013 08:35'!
nextPut: aThing

	^ self , (aThing asRope)! !

!Rope methodsFor: 'stream support' stamp: 'KenD 3/6/2013 08:35'!
nextPutAll: aCollection

	^ self , (aCollection as: Rope)! !

!Rope methodsFor: 'uCompletion' stamp: 'KenD 2/22/2013 21:08'!
separateKeywords

	^ (self , ' ')! !

!Rope methodsFor: 'internet' stamp: 'KenD 2/22/2013 20:37'!
unescapePercents
	"change each %XY substring to the character with ASCII value XY in hex.  This is the opposite of #encodeForHTTP"
	| ans c asciiVal pos oldPos specialChars |
	ans _ WriteStream on: String new.
	oldPos _ 1.
	specialChars _ '+%' asCharacterSet.

	[pos _ self indexOfAnyOf: specialChars startingAt: oldPos. pos > 0]
	whileTrue: [
		ans nextPutAll: (self copyFrom: oldPos to: pos - 1).
		c _ self at: pos.
		c = $+ ifTrue: [ans nextPut: $ ] ifFalse: [
			(c = $% and: [pos + 2 <= self size]) ifTrue: [
				asciiVal _ (self at: pos+1) asUppercase digitValue * 16 +
					(self at: pos+2) asUppercase digitValue.
				pos _ pos + 2.
				asciiVal > 255 ifTrue: [^self].	"not really an escaped string"
				ans nextPut: (Character value: asciiVal)]
			ifFalse: [ans nextPut: c]].
		oldPos _ pos+1].
	ans nextPutAll: (self copyFrom: oldPos to: self size).
	^ ans contents asRope! !

!Rope methodsFor: 'internet' stamp: 'KenD 2/22/2013 20:37'!
withoutQuoting
	"remove the initial and final quote marks, if present"
	"'''h''' withoutQuoting"
	| quote |
	self size < 2 ifTrue: [ ^self ].
	quote := self first.
	(quote = self last and: [ quote = $' or: [ quote = $" ] ])
		ifTrue: [ ^self copyFrom: 2 to: self size - 1 ]
		ifFalse: [ ^self ].! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:35'!
crString
	"Answer a string containing a single carriage return character."

	^ (Character crCharacter asRope )! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:38'!
crlfString
	"Answer a string containing a carriage return and a linefeed."

	^ (String crlfString asRope)! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 4/22/2013 19:48'!
emptyRope
	"Answer a Rope containing a empty String."

	^ EmptyRope ! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 4/22/2013 19:47'!
emptyString
	"Answer a Rope containing a empty String."

	^ EmptyRope ! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:42'!
fromPacked: aLong
	"Convert from a longinteger to a String of length 4."
	
	^ (String fromPacked: aLong) asRope! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/16/2013 14:46'!
fromString: aString
	"Answer a new rope"

	^FlatRope fromString: aString! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:39'!
fromUtf8: aByteArray
	"Convert the given bytes from UTF-8 to  the internal encoding: ISO Latin 9 (ISO 8859-15).
	See #asUtf8 "
	"For any unicode chars not in ISO Latin 9 (ISO 8859-15), embed an NCR.
	See http://en.wikipedia.org/wiki/Numeric_character_reference"

	^ (String fromUtf8: aByteArray hex: false trimLastNull: false) asRope! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:40'!
fromUtf8: aByteArray hex: useHexForNCRs trimLastNull: doTrimLastNullChar
	"Convert the given string from UTF-8 to  the internal encoding: ISO Latin 9 (ISO 8859-15)"
	"For unicode chars not in ISO Latin 9 (ISO 8859-15), embed Decimal NCRs or Hexadecimal NCRs according to useHex.
	
	See http://en.wikipedia.org/wiki/Numeric_character_reference
	See http://rishida.net/tools/conversion/. Tests prepared there.
	
	Note: The conversion of NCRs is reversible. See #asUtf8:
	This allows handling the full Unicode in Cuis tools, that can only display the Latin alphabet, by editing the NCRs.
	The conversions can be done when reading / saving files, or when pasting from Clipboard and storing back on it."

	^ (String fromUtf8: aByteArray hex: useHexForNCRs trimLastNull: doTrimLastNullChar) asRope! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:33'!
lfString
	"Answer a Rope containing a single Lf character."

	^ (Character lfCharacter asRope )! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/25/2013 14:11'!
newFrom:  aCollection
	"Answer a new rope"
"
	{ $c. $a. $t.} as: Rope.
"
	^FlatRope fromString: (aCollection as: String)! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:33'!
newLineString
	"Answer a string containing a single newLine (i.e. Lf) character."

	^ (Character newLineCharacter asRope )! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:23'!
readFrom: inStream
	"Answer an instance of me that is determined by reading the stream, 
	inStream. Embedded double quotes become the quote Character."
	
	^ self fromString: (String readFrom: inStream)! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/23/2013 17:40'!
space
	"Answer a string containing a single tab character."

	^ (Character space asRope )! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:34'!
tab
	"Answer a string containing a single tab character."

	^ (Character tab asRope )! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 2/21/2013 17:41'!
value: anInteger

	^ (String with: (Character value: anInteger)) asRope! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 8/22/2016 15:47:13'!
with: aString

	^ aString asRope! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 8/22/2016 15:47:42'!
with: aString1 with: aString2

	^ aString1 asRope, aString2 asRope! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 8/22/2016 15:48:02'!
with: aString1 with: aString2 with: string3

	^ aString1 asRope, aString2 asRope, string3 asRope! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 8/22/2016 15:48:27'!
with: aString1 with: aString2 with: string3 with: string4

	^ aString1 asRope, aString2 asRope, string3 asRope, string4 asRope! !

!Rope class methodsFor: 'instance creation' stamp: 'KenD 8/22/2016 15:52:12'!
withAll: aCollectionOrCharacters

	^ (String withAll: aCollectionOrCharacters) asRope! !

!Rope class methodsFor: 'as yet unclassified' stamp: 'KenD 5/14/2014 07:17'!
defaultFontClass

	^ StrikeFont ! !

!Rope class methodsFor: 'as yet unclassified' stamp: 'KenD 2/21/2013 17:50'!
findFirstInString: aString  inSet: inclusionMap  startingAt: start

	| i stringSize aRope |

	inclusionMap size ~= 256 ifTrue: [ ^0 ].

	i _ start.
	stringSize _ aString size.
	aRope := aString asRope.
	[ i <= stringSize and: [ (inclusionMap at: (aRope at: i) asciiValue+1) = 0 ] ] 
		whileTrue: [ i _ i + 1 ].

	i > stringSize ifTrue: [ ^0 ].
	
	^i! !

!Rope class methodsFor: 'as yet unclassified' stamp: 'KenD 2/21/2013 17:49'!
indexOfAscii: anInteger inString: aString startingAt: start

	| aRope stringSize |

	stringSize _ aString size.
	aRope := aString asRope.
	
	start to: stringSize do: [:pos |
		(aRope at: pos) asciiValue = anInteger ifTrue: [^ pos]].

	^ 0
! !

!Rope class methodsFor: 'as yet unclassified' stamp: 'KenD 4/22/2013 20:26'!
stringHash: aString initialHash: speciesHash

	| aRope numChars hash low |

	numChars _ (aString size) min: 20.
	hash _ speciesHash bitAnd: 16rFFFFFFF.
	aRope := aString asRope. "Coerce as required"
	
	1 to: numChars do: [:pos |
		hash _ hash + (aRope at: pos) asciiValue.
		"Begin hashMultiply"
		low _ hash bitAnd: 16383.
		hash _ (16r260D * low + ((16r260D * (hash bitShift: -14) + (16r0065 * low) bitAnd: 16383) * 16384)) bitAnd: 16r0FFFFFFF.
	].
	^ hash! !

!Rope class methodsFor: 'as yet unclassified' stamp: 'KenD 2/23/2013 20:28'!
translate: aString from: start  to: stop  table: table
	"Translate the characters in the string by the given table.
	Answer a new rope with the translation"

	| subStr aRope |
	subStr := (start to: stop) collect: [ :index | table at: (aString at: index) asciiValue + 1 ].
	aRope := aString asRope.
	
	^ ( aRope copyFrom: 1 to: (start - 1)) ,  
		subStr asRope ,  
		(aRope copyFrom: (stop + 1) to: (aRope size))! !

!Rope class methodsFor: 'character collation' stamp: 'KenD 2/21/2013 18:57'!
does: aCharacter caseInsensitiveCollateBefore: otherCharacter

	"Delegate to String"
	^(String does: aCharacter caseInsensitiveCollateBefore: otherCharacter)! !

!Rope class methodsFor: 'character collation' stamp: 'KenD 2/21/2013 18:57'!
does: aCharacter collateAfter: otherCharacter

	"Delegate to String"
	^(String does: aCharacter collateAfter: otherCharacter)! !

!Rope class methodsFor: 'character collation' stamp: 'KenD 2/21/2013 18:58'!
does: aCharacter collateBefore: otherCharacter

	"Delegate to String"
	^(String does: aCharacter collateBefore: otherCharacter)! !

!Rope class methodsFor: 'private' stamp: 'KenD 2/12/2013 17:08'!
fibonacci

"
	self fibonacci size.
"
	^Fibonacci ! !

!Rope class methodsFor: 'private' stamp: 'KenD 2/12/2013 18:33'!
maxRopeDepth
	"Rebalance a Rope when its depth exceeds this."
"
	self fibonacci size.
"
	^MaxRopeDepth ! !

!Rope class methodsFor: 'private' stamp: 'KenD 4/11/2013 13:06'!
merge: leafNodes start: start end: end
	"Answer a balanced rope based on data from Rope\>>rebalance"

	| range middle |
	range := end - start.
	
	(range = 0)
	ifTrue: [^ leafNodes at: start].
	
	(range = 1)
	ifTrue: [^ (leafNodes at: start) , (leafNodes at: (start + 1)) ].
	
	middle := start + (range quo: 2).
	
	^ (self merge: leafNodes start: start end: middle ) ,
	   (self merge: leafNodes start: middle + 1 end: end)
	! !

!Rope class methodsFor: 'class initialization' stamp: 'KenD 2/23/2013 13:47'!
initialize
"
	Rope initialize.
"
	Fibonacci :=   #( 0  1  1  2  3  5  8  13  21  34  55  89  144  233  377  610  987  1597  2584  4181  6765  10946  17711  28657  46368  75025  121393  196418  317811  514229  832040  1346269  2178309  3524578  5702887  9227465  14930352  24157817  39088169  63245986  102334155  165580141  267914296  433494437  701408733  1134903170  1836311903  2971215073  4807526976  7778742049  12586269025  20365011074  32951280099  53316291173  86267571272  139583862445  225851433717  365435296162  591286729879  956722026041  1548008755920  2504730781961  4052739537881  6557470319842  10610209857723  17167680177565  27777890035288  44945570212853  72723460248141  117669030460994  190392490709135  308061521170129  498454011879264  806515533049393  1304969544928657  2111485077978050  3416454622906707  5527939700884757  8944394323791464  14472334024676221  23416728348467685  37889062373143906  61305790721611591  99194853094755497  160500643816367088  259695496911122585  420196140727489673  679891637638612258  1100087778366101931  1779979416004714189  2880067194370816120  4660046610375530309  7540113804746346429 ).
	
	MaxRopeDepth := 96.  "rebalance ropes whose depth exceeds this"
	
	EmptyRope := '' asRope. "May as well share this"! !

!Rope class methodsFor: 'user interface' stamp: 'KenD 4/24/2013 12:28'!
openTextEditor

"
	Rope openTextEditor.
"
	SystemWindow 
		editText: (RopeTextModel 
			withText: (
			 	('Given enough rope' asRope) , 
				(Rope newLineString) ,
				('you can write a text editor!!' asRope)
				)) 
			label: 'Text Editor' 
			wrap: true! !

!ConcatRope methodsFor: 'accessing' stamp: 'KenD 2/12/2013 14:05'!
at: anIndex

	| leftLength |
	leftLength := self leftRope size.
	(anIndex <= leftLength)
	ifTrue:  [^leftRope  at: anIndex]
	ifFalse: [^rightRope at: (anIndex - leftLength)]! !

!ConcatRope methodsFor: 'accessing' stamp: 'KenD 2/12/2013 14:02'!
at: index put: aCharacter 

	"Answer a new rope"
	| leftLength |
	leftLength := self leftRope size.
	(index <= leftLength)
	ifTrue: [ ^ (self leftRope at: index put: aCharacter) , self rightRope]
	ifFalse: [ ^ self leftRope ,
		          (self rightRope at: (index - leftLength) put: aCharacter)]! !

!ConcatRope methodsFor: 'accessing' stamp: 'KenD 2/8/2013 19:31'!
size

	^totalLength! !

!ConcatRope methodsFor: 'private' stamp: 'KenD 2/12/2013 18:50'!
balanceAsRequired
	"Rebalance as required"

	(self depth > Rope maxRopeDepth)
	ifTrue:  [ ^ self rebalance ]
	ifFalse: [ ^ self ]! !

!ConcatRope methodsFor: 'private' stamp: 'KenD 2/12/2013 14:21'!
depth
	
	^depth! !

!ConcatRope methodsFor: 'private' stamp: 'KenD 2/8/2013 16:58'!
leftRope
	
	^leftRope! !

!ConcatRope methodsFor: 'private' stamp: 'KenD 2/12/2013 15:28'!
meldThreshold

	"Answer combined size below which we should meld short strings together"
	^ ConcatRope meldThreshold ! !

!ConcatRope methodsFor: 'private' stamp: 'KenD 2/8/2013 16:59'!
rightRope
	
	^rightRope! !

!ConcatRope methodsFor: 'copying' stamp: 'KenD 2/23/2013 13:51'!
copyFrom: start to: stop 
	"Answer a Rope."
	
	| leftMaxIndex left right |
	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ Rope emptyString ].

	((1 <= start) and: [stop <= self size])
	ifFalse: [
		(1 <= start) 
		ifTrue:  [self errorSubscriptBounds: stop]
		ifFalse: [self errorSubscriptBounds: start]
	].

	leftMaxIndex := self leftRope size.
	
	"Contained in left rope?"
	(stop <= leftMaxIndex)
	ifTrue: [^self leftRope copyFrom: start to: stop].
	
	"Contained in right ropt?"
	(start > leftMaxIndex)
	ifTrue: [^self rightRope copyFrom: (start - leftMaxIndex) to: (stop - leftMaxIndex)].
	
	"Spans both ropes"
	left   := self leftRope  copyFrom: start to: leftMaxIndex..
	right := self rightRope copyFrom: 1     to: (stop - leftMaxIndex).
	^ConcatRope concatenate: left with: right

! !

!ConcatRope methodsFor: 'enumerating' stamp: 'KenD 2/15/2013 21:50'!
do: aBlock
	"aBlock takes each Character in me as an argument"

	"recurse into the leaves, give them aBlock, and let them do the work"
	self leftRope do: aBlock.
	self rightRope do: aBlock.! !

!ConcatRope methodsFor: 'initialize-release' stamp: 'KenD 2/12/2013 19:02'!
withLeft: aRope andRight: anotherRope

	leftRope := aRope asRope.
	rightRope := anotherRope asRope.
	totalLength := aRope size + anotherRope size.
	
	"Common special cases to optimize"
	
	"Meld two short flat ropes"
	(totalLength < ConcatRope meldThreshold )
	ifTrue: [ ^ FlatRope fromString: ((aRope asString) , (anotherRope asString))]. "'FIXME: optimize"
	
	"If left rope has short right child and right rope is short, meld them"
	((leftRope class == ConcatRope)
		and: [ ((leftRope rightRope size) + rightRope size) 
			 < ConcatRope meldThreshold  ])
	ifTrue: [
		^((ConcatRope
			concatenate: (leftRope leftRope) "LeftRope's left child"
			with: (FlatRope fromString: ((leftRope rightRope asString) , 
										(rightRope asString)))  "'FIXME: optimize"
			) balanceAsRequired)
	].

	"The General Case"
	
	"depth is not defined for Strings; be sure to use Ropes"
	depth := 1 + (leftRope depth max: (rightRope depth)).
	^(self balanceAsRequired)! !

!ConcatRope class methodsFor: 'instance creation' stamp: 'KenD 2/12/2013 15:29'!
concatenate: aRope with: otherRope
	"Answer a new ConcatRope"

	"Don't bother to concat zero length ropes"
	(aRope size = 0)
		ifTrue: [^otherRope asRope].
		
	(otherRope size = 0)
		ifTrue: [^aRope asRope].

	"Non-trivial. Answer a new instance"	
	^(self new initialize withLeft: aRope andRight: otherRope) "NB: may return a FlatRope"! !

!ConcatRope class methodsFor: 'instance creation' stamp: 'KenD 3/6/2013 17:15'!
with:  aRope with: otherRope
	"Answer a new ConcatRope"

	^ self concatenate: aRope with: otherRope ! !

!ConcatRope class methodsFor: 'instance creation' stamp: 'KenD 8/22/2016 16:14:43'!
withLeft: aRope andRight: anotherRope

	^ self with: aRope with: anotherRope! !

!ConcatRope class methodsFor: 'class initialization' stamp: 'KenD 2/12/2013 15:28'!
initialize
	"ConcatRope class initialization"
"
	ConcatRope initialize.
"
	MeldThreshold := 17.! !

!ConcatRope class methodsFor: 'accessing' stamp: 'KenD 2/12/2013 15:27'!
meldThreshold
	"Concatenating short ropes (combined lenth < meldThreshold) get melded (joined) together"

	^MeldThreshold ! !

!FlatRope methodsFor: 'accessing' stamp: 'KenD 2/8/2013 16:45'!
at: anIndex
	
	^self theString at: anIndex! !

!FlatRope methodsFor: 'accessing' stamp: 'KenD 2/10/2013 19:23'!
at: index put: aCharacter 

	"Answer a new rope"
	(self size = 1)
	ifTrue: [
		(index = 1)
		ifTrue: [^ aCharacter asRope]
		ifFalse: [self errorSubscriptBounds: index]
	].
	
	(index = 1)
	ifTrue: [ ^ (aCharacter asRope , (self copyFrom: 2 to: self size))].
	
	(index = self size)
	ifTrue: [ ^ (self copyFrom: 1 to: (self size - 1)) , aCharacter asRope ].
	
	^ (self copyFrom: 1 to: (index - 1)) ,
	   aCharacter asRope ,
	   (self copyFrom: (index + 1) to: (self size))! !

!FlatRope methodsFor: 'accessing' stamp: 'KenD 2/8/2013 16:53'!
size
	"??cash this as an instance variable??"
	
	^self theString size! !

!FlatRope methodsFor: 'accessing' stamp: 'KenD 8/22/2016 16:16:30'!
substringFrom: startIndex length: numChars

	((0 <= startIndex) and: [startIndex + numChars <= self size])
	ifTrue: [
		^(SubRope string: (self string) startIndex: startIndex length: numChars)
	]
	ifFalse: [self errorSubscriptBounds: startIndex]! !

!FlatRope methodsFor: 'copying' stamp: 'KenD 8/22/2016 16:16:22'!
copyFrom: start to: stop 
	"Answer a Rope."

	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ Rope emptyString ].

	((start = 1) and: (stop = self size))
	ifTrue: [^self].
	
	((1 <= start) and: [stop <= self size])
	ifTrue: [
		^(SubRope 
			string: (self theString) startIndex: start length: (stop - start + 1))
	]
	ifFalse: [
		(stop > self size) 
		ifTrue: [self errorSubscriptBounds: stop]
		ifFalse: [self errorSubscriptBounds: start]
	]! !

!FlatRope methodsFor: 'private' stamp: 'KenD 2/12/2013 14:22'!
depth
	"I am a leaf"
	
	^0! !

!FlatRope methodsFor: 'private' stamp: 'KenD 2/8/2013 16:44'!
theString
	
	^theString! !

!FlatRope methodsFor: 'enumerating' stamp: 'KenD 2/15/2013 21:49'!
do: aBlock
	"aBlock takes each Character in me (my string) as an argument"

	self theString do: aBlock! !

!FlatRope methodsFor: 'initialize-release' stamp: 'KenD 2/9/2013 19:28'!
with: aString

	theString := aString. "@@FixMe -- aString assumed immutable"
	^self! !

!FlatRope class methodsFor: 'instance creation' stamp: 'KenD 2/10/2013 19:43'!
fromString: aString
	"Answer a new rope.
	As the string must be immutable, we will keep a copy"

	^(self new initialize with: aString copy;
	   yourself)! !

!LazyFileRope methodsFor: 'accessing' stamp: 'KenD 4/22/2013 19:31'!
at: anIndex
	"Read as much as is required to satisfy the request.  Answer a Rope"
	
	self extendForIndex: anIndex.
	^ (soFar at: anIndex)! !

!LazyFileRope methodsFor: 'accessing' stamp: 'KenD 4/22/2013 19:31'!
at: anIndex put: aChar
	"Read as much as is required to satisfy the request.  Answer a Rope"
	
	self extendForIndex: anIndex.
	^ (soFar at: anIndex put: aChar asCharacter)! !

!LazyFileRope methodsFor: 'accessing' stamp: 'KenD 4/22/2013 19:31'!
depth
	"I cannot be rebalanced"
	
	^ 0! !

!LazyFileRope methodsFor: 'accessing' stamp: 'KenD 4/22/2013 19:35'!
size
	"Answer the niumber of Characters in me"

	(totalCount isNil) ifFalse: [ ^totalCount ].
	(fileStream closed) 
		ifTrue: [  ^totalCount := soFar size ]
		ifFalse: [ ^totalCount := fileStream size ]
! !

!LazyFileRope methodsFor: 'enumerating' stamp: 'KenD 4/22/2013 19:36'!
collect: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect the resulting values into a collection like the receiver. Answer 
	the new collection."

	self readEntireContents.
	^ soFar collect: aBlock! !

!LazyFileRope methodsFor: 'enumerating' stamp: 'KenD 4/22/2013 19:36'!
do: aBlock
	"aBlock takes each UniChar in me as an argument"

	self readEntireContents.
	^ soFar do: aBlock! !

!LazyFileRope methodsFor: 'enumerating' stamp: 'KenD 4/22/2013 19:36'!
select: aBlock
	"Refer to the comment in Collection>>select:."

	self readEntireContents.
	^ soFar select: aBlock! !

!LazyFileRope methodsFor: 'copying' stamp: 'KenD 4/22/2013 19:46'!
copyFrom: start to: stop 
	"Answer a UniString."
	
	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ '' asRope ].

	self extendForIndex: stop.
	
	^ soFar copyFrom: start to: stop! !

!LazyFileRope methodsFor: 'private' stamp: 'KenD 4/22/2013 19:48'!
extendForIndex: anIndex
	"If (anIndex > soFar size),  Extend soFar to include anIndex"
"
Transcript log: 'LazyFileRope>>extendForIndex: ',
				(anIndex  asString), '  ', (soFar size) asString ,
  				String newLineString.
"			
	(anIndex > (soFar size)) ifTrue: [ | delta |
		delta := anIndex - (soFar size).
		(delta < ChunkSize)
			ifTrue: [ soFar := soFar , (fileStream next: ChunkSize) asRope ]
			ifFalse: [ soFar := soFar , (fileStream next: (delta + 100)) asRope ].
		self fileCheck.
	]! !

!LazyFileRope methodsFor: 'private' stamp: 'KenD 4/22/2013 19:21'!
fileCheck
	"Close and remove tempFile if all characters consumed"
"
Transcript log: 'LazyFileRope>>fileCheck  closed? >> ',
				(uniFileStream closed asString),
  				String newLineString.
"			
	((fileStream closed not) and: [fileStream atEnd])
		 ifTrue: [ self fileCleanup ]! !

!LazyFileRope methodsFor: 'private' stamp: 'KenD 11/1/2015 15:59'!
fileCleanup
	"Close and remove tempFile"

	 | fn |
	fn := fileStream name.
	fileStream close.
	fn asFileEntry delete.! !

!LazyFileRope methodsFor: 'private' stamp: 'KenD 4/22/2013 19:21'!
finalize

	super finalize.
	self fileCleanup.
	! !

!LazyFileRope methodsFor: 'private' stamp: 'KenD 5/31/2016 16:31'!
genTempFileName
	"Answer the name of a file which is different than one that exists"
	
	"@@FIXME: Use /tmp on Unix, ??? on Windows"
	
	| dir looking rand fileName |
	
	looking := true.
	dir := DirectoryEntry currentDirectory.
	[looking] whileTrue: [
		 rand := 777 atRandom: (Random new initialize).
 		 fileName := 'tmp' , rand asString.
 		 looking := (dir name: fileName) exists.
	].
	^ fileName
! !

!LazyFileRope methodsFor: 'private' stamp: 'KenD 4/22/2013 19:22'!
readEntireContents
	"Enumerators process the entire range of characters"
"
Transcript log: 'LazyFileRope>>readEntireContents closed? >> ',
				(fileStream closed asString),
  				String newLineString.
"
	(fileStream closed) ifFalse: [ 
		soFar := soFar , (fileStream upToEnd).
		self fileCleanup.
	].
	(totalCount isNil) ifFalse: [ totalCount := soFar size ]! !

!LazyFileRope methodsFor: 'private' stamp: 'KenD 4/22/2013 19:23'!
soFar
	"Debug only"
	^soFar! !

!LazyFileRope methodsFor: 'initialize-release' stamp: 'KenD 11/1/2015 15:55'!
initializeFromFile: aFmFileEntry "entry exists and is a text file"
	
	| tmpFileName |
	super initialize.
	"As Ropes are immutable, copy the file"
	tmpFileName := aFmFileEntry parent pathName, '/', self genTempFileName.
	aFmFileEntry copyTo: tmpFileName.
	
	"Open a FileStream on the copy"
	fileName := tmpFileName.
	totalCount := nil.
	fileStream := StandardFileStream new open: tmpFileName forWrite: false.
	soFar := (fileStream next: ChunkSize) asRope..
	
	^self
	! !

!LazyFileRope class methodsFor: 'class initialization' stamp: 'KenD 4/22/2013 19:38'!
initialize
"
	LazyFileRope initialize.
"
	ChunkSize := 1024.
	! !

!LazyFileRope class methodsFor: 'instance creation' stamp: 'KenD 10/31/2015 19:41'!
onFileNamed: aName
	"Answer a new instance of me"
"
	(LazyFileString onFileNamed: 'test.txt') inspect.
"
	 | fileEntry |
	fileEntry := aName asFileEntry.
	(fileEntry exists)
		ifFalse: [ ^ self error: 'Failed to find file ' , aName ].

	(fileEntry isDirectory) 
		ifTrue: [ ^self error: 'Not a text file: ' , aName ].
		
	((fileEntry fileSize) < ChunkSize)
	ifFalse: [ ^ self new initializeFromFile: fileEntry ]
	ifTrue: [ ^ fileEntry textContents asRope ] "Too small to bother with"

	! !

!RepeatedCharRope methodsFor: 'accessing' stamp: 'KenD 4/22/2013 19:09'!
at: anIndex

	self checkIndex: anIndex.
	
	^char! !

!RepeatedCharRope methodsFor: 'accessing' stamp: 'KenD 4/22/2013 19:10'!
at: index put: aCharacter 
	"Answer a new UniString"
	
	self checkIndex: index.
	(self size = 1)
	ifTrue: [ ^ aCharacter asRope ].
	
	(index = 1)
	ifTrue: [ ^ (aCharacter asRope , (self copyFrom: 2 to: self size))].
	
	(index = self size)
	ifTrue: [ ^ (self copyFrom: 1 to: (self size - 1)) , aCharacter asRope ].
	
	^ (self copyFrom: 1 to: (index - 1)) ,
	   aCharacter asRope ,
	   (self copyFrom: (index + 1) to: (self size))! !

!RepeatedCharRope methodsFor: 'accessing' stamp: 'KenD 4/22/2013 19:11'!
size
	
	^count! !

!RepeatedCharRope methodsFor: 'private' stamp: 'KenD 4/22/2013 19:09'!
checkIndex: anIndex

	(anIndex < 1 or: [anIndex > count])
	ifTrue: [ self error: 'Index out of range ' , (anIndex asString)]! !

!RepeatedCharRope methodsFor: 'private' stamp: 'KenD 4/22/2013 19:09'!
depth
	"I am a leaf"
	
	^ 0! !

!RepeatedCharRope methodsFor: 'copying' stamp: 'KenD 4/22/2013 19:13'!
copyFrom: start to: stop 
	"Answer a UniString."

	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ Rope emptyString ].
	
	self checkIndex: start.
	self checkIndex: stop.

	^ RepeatedCharRope withChar: char repeatCount: (stop - start + 1)! !

!RepeatedCharRope methodsFor: 'copying' stamp: 'KenD 4/22/2013 19:14'!
substringFrom: startIndex length: numChars
	"Answer a UniString."
	
	self checkIndex: startIndex.
	self checkIndex: (startIndex + numChars - 1).

	^ RepeatedCharRope withChar: char repeatCount: numChars! !

!RepeatedCharRope methodsFor: 'enumerating' stamp: 'KenD 4/22/2013 19:13'!
do: aBlock
	"aBlock takes each codePoint in me as an argument"

	(1 to: count) do: [ :ignore | aBlock value: char].! !

!RepeatedCharRope methodsFor: 'initialize-release' stamp: 'KenD 4/22/2013 19:14'!
initialize

	super initialize.
	char := Character space.
	count := 0. "Empty"! !

!RepeatedCharRope methodsFor: 'initialize-release' stamp: 'KenD 4/22/2013 19:14'!
withChar: aChar repeatCount: repeatCount

	char := aChar asCharacter.
	count := repeatCount.! !

!RepeatedCharRope class methodsFor: 'instance creation' stamp: 'KenD 4/22/2013 19:15'!
new:  repeatCount

	^ (self basicNew withChar: Character space repeatCount: repeatCount)! !

!RepeatedCharRope class methodsFor: 'instance creation' stamp: 'KenD 4/22/2013 19:15'!
ofSize: repeatCount

	^ (self withChar: Character space repeatCount: repeatCount)! !

!RepeatedCharRope class methodsFor: 'instance creation' stamp: 'KenD 4/22/2013 19:15'!
withChar: aChar repeatCount: repeatCount

	^ (self basicNew withChar: aChar repeatCount: repeatCount) ! !

!SubRope methodsFor: 'accessing' stamp: 'KenD 2/9/2013 19:30'!
at: anIndex

	^self string at: (anIndex + startIndex - 1)! !

!SubRope methodsFor: 'accessing' stamp: 'KenD 9/21/2016 13:11:32'!
at: index put: aCharacter 
 
	"Answer a new rope"
	| offset  start  end  |
	
	start    := self startIndex.
	end     := start  + self size - 1.
	offset  := index +  start  - 1.
	
	(self size = 1)
	ifTrue:  [
		(offset  = 1)
		ifTrue: [^ aCharacter asRope]
		ifFalse: [self errorSubscriptBounds: index]
	].
	
	(index = 1)
	ifTrue: [ ^ aCharacter asRope , (self copyFrom: 2 to: self size)].
	
	(offset  = end )
	ifTrue: [ ^ (self copyFrom: 1 to: (index - 1)) , aCharacter asRope ].
	
	^ (self copyFrom: 1 to: (index - 1)) ,
	   aCharacter asRope ,
	   (self copyFrom: (index + 1) to: self size )! !

!SubRope methodsFor: 'accessing' stamp: 'KenD 2/8/2013 19:30'!
size
	^length! !

!SubRope methodsFor: 'copying' stamp: 'KenD 8/22/2016 16:16:54'!
copyFrom: start to: stop 
	"Answer a SubRope which shares my string"
	
	| offsetStart offsetStop |
	offsetStart := start - 1 + self startIndex.
	offsetStop := stop  - 1 + self startIndex.
	
	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ Rope emptyString ].

	((1 <= start) and: [stop <= (self string size)])
	ifTrue: [
		^(SubRope 
			string: (self string) 
			startIndex: offsetStart
			length: (stop - start + 1))
	]
	ifFalse: [
		(offsetStop > self string size) 
		ifTrue: [self errorSubscriptBounds: stop]
		ifFalse: [self errorSubscriptBounds: start]
	]! !

!SubRope methodsFor: 'private' stamp: 'KenD 2/12/2013 14:21'!
depth
	"I am a leaf"

	^0! !

!SubRope methodsFor: 'private' stamp: 'KenD 2/8/2013 19:29'!
startIndex
	^startIndex! !

!SubRope methodsFor: 'private' stamp: 'KenD 2/9/2013 16:19'!
string
	^theString! !

!SubRope methodsFor: 'enumerating' stamp: 'KenD 2/15/2013 21:46'!
do: aBlock
	"aBlock takes each Character in me as an argument"

	| start end string |
	start := self startIndex.
	end := start + self size - 1.
	string := self string.
	start to: end do: [ :index |  aBlock value: (string at: index) ]! !

!SubRope methodsFor: 'initialize-release' stamp: 'KenD 2/9/2013 19:29'!
string: aString startIndex: anIndex length: numberOfChars
	
	startIndex := anIndex.
	length := numberOfChars.
	theString := aString.
	
	"Idiot checks"
	(aString size < (numberOfChars - anIndex + 1))
	ifTrue: [self error: 'Length exceeds max' , (numberOfChars - anIndex + 1) printString ].
	
	(numberOfChars < 0)
	ifTrue: [self error: 'Can''t have negative length' , numberOfChars].
	
	((anIndex < 1) or: (anIndex > aString size))
	ifTrue: [self errorSubscriptBounds: anIndex].
	
	^self! !

!SubRope class methodsFor: 'instance creation' stamp: 'KenD 8/22/2016 16:15:41'!
string: aString startIndex: anIndex length: numberOfChars
	"Private"
	
	^ self new string: aString startIndex: anIndex length: numberOfChars! !

!RopeTextEditor methodsFor: 'accessing' stamp: 'KenD 6/1/2021 10:49:46'!
getMenu
	"I override inherited #getMenu"
	| aMenu | 
	aMenu _ MenuMorph new defaultTarget: self.
	^aMenu
		addTitle: self class name;
		addStayUpIcons;
		add: 'Help...'	 action: #openHelp;
		addLine;
		add: 'Save (s)'		action: #save;
		add:  'SaveAs...' action: #saveAs;
		addLine;
		add: 'Find...(f)' action: #find;
		add: 'Find Again (g)' action: #findAgain;
		add: 'Use Selection for Find (j)' action: #setSearchString;
		addLine;
		add: 'Undo - multiple (z)' action:#undo;
		add: 'Redo - multiple (Z)' action: #redo;
		add: 'Undo / Redo history' action: #offerUndoHistory;
		addLine;
		add: 'Copy (c)' action: 	#copySelection;
		add: 'Cut (x)' action:	#cut;
		add: 'Paste (v)' action: 		#paste;
		add: 'Paste without Format' action:	#pasteString;
		add: 'Paste...' action:		#pasteRecent;
		addLine;
		add: 'Toggle WordWrap' action:	#wrapOnOff;
		add: 'Set Font.. (k)' action: #offerFontMenu;
		add: 'Set Alignment...' action: 	#chooseAlignment;
		yourself! !

!RopeTextEditor methodsFor: 'accessing' stamp: 'KenD 9/19/2016 12:20:11'!
icon

	^ Theme textEditorIcon! !

!RopeTextEditor methodsFor: 'editing keys' stamp: 'KenD 11/16/2016 14:46:22'!
replaceSelectionWith: aTextOrString

	super replaceSelectionWith: aTextOrString asTextRope! !

!RopeTextEditor methodsFor: 'editing keys' stamp: 'KenD 4/24/2016 15:35'!
save
	"Save command"
	model fileName ifNotNil: [
		model save
			ifTrue: [ morph hasUnacceptedEdits: false ]
		]
		 ifNil: [ self saveAs ].
	^true! !

!RopeTextEditor methodsFor: 'editing keys' stamp: 'KenD 9/11/2016 16:11:23'!
save: aKeyboardEvent
	"Save keystroke"
	
	self acceptContents.
	^ true! !

!RopeTextEditor methodsFor: 'editing keys' stamp: 'KenD 9/15/2016 14:08:02'!
saveAs
	"SaveAs command"
	| fileName |
	fileName _ FillInTheBlankMorph
			request: 'File name?'
			initialAnswer: ''.
	fileName isEmpty ifTrue: [ ^false ]. "abort"

	model saveAs: fileName.	
	morph hasUnacceptedEdits: false.
	morph owningWindow
		setLabel: model labelString;
		invalidateTitleArea.
	
	^true! !

!RopeTextEditor class methodsFor: 'keyboard shortcut tables' stamp: 'KenD 4/24/2016 15:32'!
cmdShortcutsSpec
	"
	Editor initialize
	"
	"arranged in QWERTY keyboard order"
	^#(
		#(		$0 	changeEmphasis:			'Normal')
		#(		$1 	changeEmphasis:			'Bold')
		#(		$2 	changeEmphasis:			'Italic')
		#(		$3 	changeEmphasis:			'Underline')
		#(		$4 	changeEmphasis:			'Strikeout')
		#(		$5 	changeEmphasis:			'Negative kern (letters 1 pixel closer)')
		#(		$6 	changeEmphasis:			'Positive kern (letters 1 pixel larger spread)')
		#(		$8	#offerColorMenu:			'Change color')

		#(		$k	#offerFontMenu:			'Set font')
		
		#(		$s	#save:						'Save (i.e. accept)')

		#(		$u	#align:						'Toggle alignment')
	)! !

!RopeTextEditor class methodsFor: 'keyboard shortcut tables' stamp: 'KenD 4/24/2016 15:31'!
initializeMenu
	"Initialize the mouseButton2 (right button) pop-up menu and corresponding messages."
	"
	Editor initialize
	"

	menu _ SelectionMenu fromArray: {
		{'Help...'.						#openHelp}.
		#-.
		{'Save (s)'.						#save}.
		{'SaveAs...'.					#saveAs}.
		#-.
		{'Find...(f)'.						#find}.
		{'Find Again (g)'.				#findAgain}.
		{'Use Selection for Find (j)'.	#setSearchString}.
		#-.
		{'Undo - multiple (z)'.			#undo}.
		{'Redo - multiple (Z)'.			#redo}.
		{'Undo / Redo history'.		#offerUndoHistory}.
		#-.
		{'Copy (c)'.					#copySelection}.
		{'Cut (x)'.						#cut}.
		{'Paste (v)'.					#paste}.
		{'Paste without Format'.		#pasteString}.
		{'Paste...'.						#pasteRecent}.
		#-.
		{'Toggle WordWrap'.			#wrapOnOff}.
		{'Set Font... (k)'.				#offerFontMenu}.
		{'Set Alignment...'.				#chooseAlignment}.
	}! !

!RopeTextEditor class methodsFor: 'file reader registration' stamp: 'KenD 4/24/2016 16:51'!
fileReaderServicesForFile: filename suffix: suffix
	"FileList buttons that open a Simple Rope Text Editor on contents."

	(#('txt') includes: suffix) ifTrue: [
		^ { self serviceRopeTextEdit } ].

	^#()! !

!RopeTextEditor class methodsFor: 'file reader registration' stamp: 'KenD 4/24/2016 18:06'!
serviceRopeTextEdit
	"Answer the service of opening a file in a RopeTextEditor"

	^ (SimpleServiceEntry
		provider: self 
		label: 'open a simple text file'
		selector: #openFromFileEntry:
		description: 'open this file with a Rope Text Editor'
		buttonLabel: 'Basic Text Edit')
		argumentGetter: [ :fileList | fileList selectedFileEntry ]! !

!RopeTextEditor class methodsFor: 'file reader registration' stamp: 'KenD 4/24/2016 16:52'!
unload
"
	self unload.
"

	FileList unregisterFileReader: self ! !

!RopeTextEditor class methodsFor: 'instance creation' stamp: 'KenD 4/24/2013 13:39'!
fromUser
	"Open a RopeTextEditor on a file the user selects or ignore."
	
	RopeTextModel fromUser.! !

!RopeTextEditor class methodsFor: 'instance creation' stamp: 'KenD 9/15/2016 14:12:24'!
openFromFileEntry: fileEntry

	| model fileName  |
	fileName := fileEntry pathName.
	model := RopeTextModel fromFile: fileName.
	SystemWindow 
		editText: model
			label: 'Text Edit(''',  fileEntry name ,  ''')'
			wrap: true.! !

!RopeTextEditor class methodsFor: 'instance creation' stamp: 'KenD 4/24/2016 18:35'!
openTextEditor

	RopeTextModel openLabel: 'Text Editor'! !

!RopeTextEditor class methodsFor: 'class initialization' stamp: 'KenD 6/1/2021 10:19:10'!
initialize

"
	RopeTextEditor initialize.
"
	super initialize.
	FileList registerFileReader: self.! !

!RopeTextEditor class methodsFor: 'menu-world' stamp: 'KenD 7/25/2018 14:01:29'!
worldMenuForOpenGroup
	^ `{{
			#itemGroup 	-> 		10.
			#itemOrder 	-> 		10.
			#label 			->		'Basic Text Editor'.
			#object 			-> 		RopeTextEditor .
			#selector 		-> 		#openTextEditor.
			#icon 			-> 	     #textEditorIcon .
			#balloonText 	-> 		'A window for composing text'.
		} asDictionary}`! !

!RopePerformanceTest methodsFor: 'performance' stamp: 'KenD 2/22/2013 19:43'!
testConcatTime
	"self new testConcatTime"

	| r r2 result africanProverb interpretation |
	africanProverb :=  'A hundred pieces of elephant (reed) grass cannot cause the one fetching water to fall down on the way.'.
	interpretation := 'If you are serious about doing something, nothing can prevent you from doing it.'.
	
	r := Rope fromString: africanProverb.
	r2 := Rope fromString: interpretation.
	
	Transcript newLine.
	Transcript show: 'concat time for Ropes: ',  [500000 timesRepeat: [ result := r2, r]] timeToRun asString, 'ms'.
	Transcript newLine.
	
	Transcript show: 'concat time for Strings: ',  
					[500000 timesRepeat: [ result := interpretation, africanProverb]] timeToRun asString, 'ms'.
	Transcript newLine.
	
	
	africanProverb :=  'A hundred pieces of elephant (reed) grass cannot cause the one fetching water to fall down on the way.'.
	interpretation := 'If you are serious about doing something, nothing can prevent you from doing it.'.
	
	
	r := Rope fromString: africanProverb.
	r2 := Rope fromString: interpretation.
	
	
	result := Rope fromString: ''.
	Transcript show: 'concat time for Ropes: ',  [1000 timesRepeat: [ result := r2, r, result]] timeToRun asString, 'ms'.
	Transcript newLine.
	
	result := ''.
	Transcript show: 'concat time for Strings: ',  
			[1000 timesRepeat: [ result := interpretation, africanProverb, result]] timeToRun asString, 'ms'.
	Transcript newLine.
	
	
	
	! !

!RopePerformanceTest methodsFor: 'performance' stamp: 'KenD 8/23/2016 16:34:05'!
testInjectIntoRope
	"self new testInjectIntoRope"

  	| ropeResult stringResult |
	
	Transcript newLine.
	ropeResult := '#inject:into: for Ropes: ' asRope,  
		([(1 to: 10000) inject: (Rope new) into: [ :left :right | left , right asRope ]] 
			timeToRun asRope), 
		'ms' asRope, 
		Rope  newLineString.
	Transcript show: ropeResult. Transcript newLine.

	ropeResult := '#inject:into: for RopeWrapper: ' asRope,  
		([(1 to: 10000) inject: (RopeWrapper new) into: [ :left :right | left , right asRope ]] 
			timeToRun asRope), 
		'ms' asRope, 
		Rope  newLineString.
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

!RopePerformanceTest methodsFor: 'performance' stamp: 'KenD 2/22/2013 19:43'!
testIterationTime
	"self new testIterationTime"

	| r r2 ropeTest stringTest africanProverb interpretation ropeResult stringResult ir is|
	africanProverb :=  'A hundred pieces of elephant (reed) grass cannot cause the one fetching water to fall down on the way.'.
	interpretation := 'If you are serious about doing something, nothing can prevent you from doing it.'.
	
	r := Rope fromString: africanProverb.
	r2 := Rope fromString: interpretation.
	
	Transcript newLine.
	ropeResult := 'concat time for Ropes: ',  
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
	
	self assert: is = ir. "the end indices of the string and the rope must be equal"
	
	
	
	
! !

!RopePerformanceTest methodsFor: 'performance' stamp: 'KenD 3/14/2013 20:13'!
testWriteStreamOnRope
	"self new testWriteStreamOnRope"

  	| ws ropeResult stringResult |
	
	Transcript newLine.
	stringResult := '#nextPutAll: for Strings: ',  
		[ws := WriteStream on: String  new.
      	1 to: 100000 do: [ :i | ws nextPutAll: i asString]] timeToRun asString, 'ms', String newLineString.
	Transcript show: stringResult. 

	Transcript newLine.	
	ropeResult := '#nextPutAll: for Ropes: ' asRope,  
		[ws := Rope  new.
      	1 to: 100000 do: [ :i | ws nextPutAll: i asRope]] timeToRun asRope, 'ms', Rope  newLineString.
	Transcript show: ropeResult. Transcript newLine.

	"The run time for the following is really dreadful!!"
	
"	ropeResult := '#nextPutAll: for RopeWrapper: ' asRope,  
		[ws :=RopeWrapper  new.
      	1 to: 100000 do: [ :i | ws nextPutAll: i asRope]] timeToRun asRope, 'ms', Rope  newLineString.
	Transcript show: ropeResult. Transcript newLine.
"
	! !

!RopeTest methodsFor: 'initialize-release' stamp: 'KenD 8/22/2016 16:16:44'!
setUp

	"Set up class variables (before each test)."
	"This could be done once, as Ropes are immutable"
	| testString |
	testString := '1234abcd5678hijk90lm'.
	flatRope := FlatRope fromString: testString.
	"Build SubRope by hand as we need to test constructor"
	subRope := SubRope string: testString startIndex: 5 length: 12.
	concRope1 := ConcatRope concatenate: subRope with: (' new string tail' asRope).
	concRope2 := ConcatRope concatenate: concRope1 with:concRope1.
	concRope3 := ConcatRope concatenate: ('Now is the time ' asRope) with: subRope.
	longFlat  := FlatRope fromString: '123456789012345678901234567890'. "long"
	shortFlat := FlatRope fromString: 'short'. "short"
! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/10/2013 14:45'!
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

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/25/2013 14:23'!
testComparing
	self assert: 'foo' asRope < 'foo:'.
	self assert: 'foo' asRope < 'fooBar'.
	self assert: 'foo' asRope <= 'foo:'.
	self assert: 'foo' asRope <= 'fooBar'.
	self assert: 'foo:' asRope > 'foo'.
	self assert: 'fooBar' asRope > 'foo'.
	self assert: 'foo:' asRope >= 'foo'.
	self assert: 'fooBar' asRope >= 'foo'.
	self assert: ({ $c. $a. $t.} as: Rope) = 'cat'.
	! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/23/2013 15:24'!
testIsAllDigits
	"self run: #testIsAllDigits"
	self deny: ((Rope emptyString) isAllDigits).
	self deny: ( '1.23' asRope isAllDigits).
	self deny: ( '12 3' asRope isAllDigits).
	self deny: ( '-123' asRope isAllDigits).
	self assert: ('0123456789' asRope isAllDigits).! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/22/2013 19:41'!
testMatch

	self assert: ((Rope fromString: '*'	)		match: 'zort' ).
	self assert: ((Rope fromString: '*baz'	)	match: 'mobaz' ).
	self deny:   ((Rope fromString: '*baz')		match: 'mobazo' ).
	self assert: ((Rope fromString: '*baz*')		match: 'mobazo' ).
	self deny:   ((Rope fromString: '*baz*')		match: 'mozo'  ).
	self assert: ((Rope fromString: 'foo*')		match: 'foozo'  ).
	self deny:    ((Rope fromString: 'foo*')		match: 'bozo'  ).
	self assert: ((Rope fromString: 'foo*baz')	match: 'foo23baz'  ).
	self assert: ((Rope fromString: 'foo*baz')	match: 'foobaz'  ).
	self deny:   ((Rope fromString: 'foo*baz')	match: 'foo23bazo'  ).
	self assert: ((Rope fromString: 'foo')		match: 'Foo'  ).
	self deny:   ((Rope fromString: 'foo*baz*zort') match: 'foobazort'  ).
	self assert: ((Rope fromString: 'foo*baz*zort') match: 'foobazzort'  ).
	self assert: ((Rope fromString: '*foo#zort')	match: 'afoo3zortthenfoo3zort'  ).
	self assert: ((Rope fromString: '*foo*zort')		match: 'afoodezortorfoo3zort'  ).
	
	#('*' 'f*'  'f*o' 'f*' '*f*' 'f#*' 'f##' '*oo' '#oo' '*o*' '#o#' '#o*' '*o#' 'fo*' 'fo#' '*foo*' '###' '#*'  'f#*' 'f#*o')
		do: [ :each | self assert: (each asRope match: 'foo') ].
	#('bar' 'foo#' '#foo' '*foo#' '#foo*' '*bar*') do: [ :each |
		self deny: (each asRope match: 'foo') ]! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/23/2013 14:15'!
testMeld
	"Do we meld short ropes?"

	self assert: ( (shortFlat , shortFlat) class == FlatRope ).
	self deny: ( (longFlat , shortFlat) class == FlatRope ).
	self deny: ( (shortFlat , longFlat) class == FlatRope ).
	self deny: ( (longFlat , longFlat) class == FlatRope ).

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
	self assert: ((('Given enough rope' asRope) ,  (Rope newLineString) , ('you can write a text editor!!' asRope)) depth = 2).
	self assert: ((('Given enough rope' asRope) ,  (Rope newLineString) , ('you can write a text editor!!' asRope)) size = 46).
! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/10/2013 19:40'!
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

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/23/2013 15:26'!
testNumArgs
	"This is about http://code.google.com/p/pharo/issues/detail?id=237"
	
	| binary |
	binary := '*+-/\~=<>&@%,|' asRope.
	self assert: (binary allSatisfy: [:char1 |
			(String with: char1) numArgs = 1 and: [binary allSatisfy: [:char2 |
				(String with: char1 with: char2) numArgs = 1 and: [binary allSatisfy: [:char3 |
					(String with: char1 with: char2 with: char3) numArgs = 1]]]]])
		description: 'binary selectors have 1 argument'.
		
	self assert: 'x' asRope numArgs = 0
		description: 'unary selectors have 0 arguments'.
	self assert: 'x0' asRope numArgs = 0
		description: 'unary selectors have 0 arguments'.
	self assert: 'yourself' asRope numArgs = 0
		description: 'unary selectors have 0 arguments'.
		
	self assert: 'x:' asRope numArgs = 1
		description: 'keyword selectors have as many elements as colons characters'.
	self assert: 'x:y:' asRope numArgs = 2
		description: 'keyword selectors have as many elements as colons characters'.
	self assert: 'at:put:' asRope numArgs = 2
		description: 'keyword selectors have as many elements as colons characters'.
			
	self assert: 'x_y_z' asRope numArgs = 0
		description: 'selectors can contain underscores'.
	self assert: '_x' asRope numArgs = 0
		description: 'selectors can begin with an underscore'.
	self assert: '_:_:' asRope numArgs = 2
		description: 'keyword selectors can contain underscores'.
		
	self assert: 'at:withoutTrailingColon' asRope numArgs = -1
		description: 'keyword selectors should have a trailing colon character'.
		
	self assert: ':x' asRope numArgs = -1
		description: 'keyword selectors cannot begin with a colon character'.
		
	self assert: 'x::y:' asRope numArgs = -1
		description: 'keyword selectors cannot have two consecutive colon characters'.
		
	self assert: '0x' asRope numArgs = -1
		description: 'selectors cannot begin with a digit'.
		
	self assert: 'x::0y:' asRope numArgs = -1
		description: 'keyword selectors cannot have any key beginning with a digit'.
	
	! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/23/2013 15:28'!
testPadLeftTo
	| aRope |
	aRope := 'a' asRope.
	self assert: ( aRope padLeftTo: 3) equals: '  a'. 
	self assert: (aRope padLeftTo: 1) equals: 'a'. 
	self assert: (aRope padLeftTo: 0) equals: 'a'.! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/23/2013 15:39'!
testPadLeftToWith
	| aRope |
	aRope := 'a' asRope.
	self assert: (aRope padLeftTo: 3 with: $#) equals: '##a'. 
	self assert: (aRope padLeftTo: 1 with: $#) equals: 'a'. 
	self assert: (aRope padLeftTo: 0 with: $#) equals: 'a'.! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/23/2013 15:39'!
testPadRightTo
	| aRope |
	aRope := 'a' asRope.
	self assert: (aRope padRightTo: 3) equals: 'a  '. 
	self assert: (aRope padRightTo: 1) equals: 'a'. 
	self assert: (aRope padRightTo: 0) equals: 'a'.! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/23/2013 15:40'!
testPadRightToWith
	| aRope |
	aRope := 'a' asRope.
	self assert: (aRope padRightTo: 3 with: $#) equals: 'a##'. 
	self assert: (aRope padRightTo: 1 with: $#) equals: aRope. 
	self assert: (aRope padRightTo: 0 with: $#) equals: aRope.! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 3/14/2013 19:48'!
testPrint
	"What does it look like?"

	self assert: ((flatRope asString) = '1234abcd5678hijk90lm').
	self assert: ((subRope asString) = 'abcd5678hijk').
	self assert: ((concRope1 asString) = 'abcd5678hijk new string tail').
	self assert: ((concRope2 asString) =
				 'abcd5678hijk new string tailabcd5678hijk new string tail').
	self assert: ((concRope3 asString) =  'Now is the time abcd5678hijk').
	
	self assert: ((flatRope printString) =  '1234abcd5678hijk90lm' ).
	self assert: ((subRope printString) =  'abcd5678hijk' ).
	self assert: ((concRope1 printString) =  'abcd5678hijk new string tail' ).
	self assert: ((concRope2 printString) =
				  'abcd5678hijk new string tailabcd5678hijk new string tail' ).
	self assert: ((concRope3 printString) =  'Now is the time abcd5678hijk').
! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 4/11/2013 13:07'!
testRebalance

	| fr1 fr2 t1 t2 |
	fr1 := FlatRope fromString: '12345678901234567890'.
	fr2 := FlatRope fromString: 'abcdefghijklmnopqrstuvwxyz'.
	t1 := (fr1, fr2, fr1, fr2, fr1, fr2, fr1, fr2).
	t2 := (fr1, concRope1, fr2, concRope2, fr1, fr2, fr1, fr2, concRope3, fr1, fr2).

	self assert: ( t1 depth = 7 ).
	self assert: ( t1 rebalance depth = 3 ).
	self assert: ( t1 rebalance = t1 ).
	self assert: ( t2 depth = 11 ).
	self assert: ( t2 rebalance depth = 4 ).
	self assert: ( t2 rebalance = t2).
	! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 4/22/2013 20:17'!
testRepeatedCharRope

	| rr |
	rr := RepeatedCharRope withChar: $c repeatCount: 12.
	self assert: ((rr at: 5) = $c).
	self assert: ((rr at: 12) = $c).
	self assert: (rr size) = 12.
	self assert: (rr = 'cccccccccccc').
	self assert: (rr at: 6 put: $a) = 'cccccacccccc'.! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/23/2013 17:39'!
testSpace
	"self debug: #testSpace"
	
	string := Rope new.
	self assert: string size = 0. "instead of #isEmpty to be consistent with the following test"
	
	string := Rope space.
	self assert: string size = 1.
	self assert: string = ' '! !

!RopeTest methodsFor: 'testing' stamp: 'KenD 2/11/2013 18:50'!
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

!RopeTest methodsFor: 'testing' stamp: 'KenD 3/14/2013 19:55'!
testWrap
	
	| wrapper |
	wrapper := RopeWrapper with: ('Test me ' asRope).
	wrapper nextPut: 'more and better.'.
	self assert: (wrapper printString  = 'Test me more and better.' ).
	wrapper nextPutAll: #( $f $u $n).
	self assert:  (wrapper printString  =  'Test me more and better.fun').
	! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 19:20'!
testAsCamelCase

       self assert: 'A man, a plan, a canal, panama' asRope asCamelCase = 'AMan,APlan,ACanal,Panama'.
       self assert: 'Here 123should % be 6 the name6 of the method' asRope asCamelCase = 'Here123should%Be6TheName6OfTheMethod' .
	self assert: ' how do you do? ' asRope asCamelCase  = 'howDoYouDo?' .! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 20:35'!
testAsCase

       self assert: ( 'CaMeL' asRope asLowercase  = 'camel').
       self assert: ( 'CaMeL' asRope asUppercase  = 'CAMEL').
 ! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 19:37'!
testAsIdentifier

       self assert: ((( '234Fred987' asRope) asIdentifier: false) =  'fred987' ) .
       self assert: (( '235Fred987'  asRope asIdentifier: true) = 'Fred987').
       self assert: ((Rope emptyString) asIdentifier: true)  = 'A' .  "Also works for empty rope"
       self assert: ((( '()87234'  asRope) asIdentifier: false) =  'a87234').
       self assert: ((( '())z>=PPve889  U >'  asRope) asIdentifier: false) = 'zPPve889U').! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 19:32'!
testAsInteger

       self assert: ( '1796exportFixes-tkMX' asRope asInteger) = 1796 .
       self assert: ( '1848recentLogFile-sw' asRope asInteger)   = 1848 .
       self assert: ( 'donald'  asRope asInteger) =  nil .
       self assert: ( 'abc234def567'  asRope asInteger) =  234 .! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 19:41'!
testAsLegalSelector

       self assert: ( '234znak 43 ) 2' asRope asLegalSelector  = 'v234znak432').
 ! !

!RopeTest methodsFor: 'test - converting' stamp: 'jmv 9/19/2016 09:49:42'!
testBase64
"copied from Cuis 4.1 class StringTest"
"self new testBase64"

	self 
		assert: 'SGVsbG8gV29ybGQ=' asRope base64Decoded = 'Hello World' asByteArray! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 18:26'!
testCapitalized

	| uc lc empty |		
	uc := 'MElViN' asRope.
	lc := 'mElViN' asRope.
	empty := ' ' asRope.
	self assert:  lc capitalized = uc.
	self assert: uc capitalized = uc.
	"the string gets copied"
	self deny: uc capitalized == uc.
	self deny: empty capitalized == empty.! !

!RopeTest methodsFor: 'test - converting' stamp: 'hjh 2/26/2013 09:38'!
testCaseConversion
      "copied from Cuis 4.1 class StringTest"
	"
	self new testCaseConversion
	"
	self assert: ('año Comé tomá Camión' asRope asLowercase) = 'año comé tomá camión' asRope.
	self assert: ('año Comé tomá Camión' asRope asUppercase) = 'AÑO COMÉ TOMÁ CAMIÓN' asRope! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 17:04'!
testSubStrings
	self assert: ('aba' asRope subStrings: 'bc') isArray.
	self assert: ('aba' asRope subStrings: 'bc') = #('a' 'a').
	self assert: ('abba' asRope subStrings: 'bc') = #('a' 'a').
	self assert: ('babbab' asRope subStrings: 'bc') = #('a' 'a').
	self assert: ('bbabbabb' asRope subStrings: 'bc') = #('a' 'a').! !

!RopeTest methodsFor: 'test - converting' stamp: 'hjh 2/26/2013 09:34'!
testTrimBoth
	self assert: Rope emptyString trimBoth = '' asRope.
	self assert: ' ' asRope trimBoth = '' asRope.
	self assert: '	' asRope trimBoth = '' asRope.
	self assert: 'foo' asRope trimBoth = 'foo' asRope.
	self assert: ' foo ' asRope trimBoth = 'foo' asRope.
	self assert: '  foo  ' asRope trimBoth = 'foo' asRope.
	self assert: ((Rope newLineString ), '   foo  ') trimBoth = 'foo' asRope.
	
	self assert: ('aabbaa' asRope trimBoth: [ :each | each = $a ]) = 'bb' asRope.
	self assert: ('bbaabb' asRope trimBoth: [ :each | each = $a ]) = 'bbaabb' asRope! !

!RopeTest methodsFor: 'test - converting' stamp: 'hjh 2/26/2013 09:34'!
testTrimLeft
	self assert: Rope emptyString trimLeft = '' asRope.
	self assert: ' ' asRope trimLeft = '' asRope.
	self assert: '	' asRope trimLeft = '' asRope.
	self assert: 'foo' asRope trimLeft = 'foo' asRope.
	self assert: ' foo ' asRope trimLeft = 'foo ' asRope.
	self assert: '  foo  ' asRope trimLeft = 'foo  ' asRope.
	
	self assert: ('aabbaa' asRope trimLeft: [ :each | each = $a ]) = 'bbaa' asRope.
	self assert: ('bbaabb' asRope trimLeft: [ :each | each = $a ]) = 'bbaabb' asRope! !

!RopeTest methodsFor: 'test - converting' stamp: 'hjh 2/26/2013 09:33'!
testTrimRight
	self assert: '' asRope trimRight = '' asRope.
	self assert: ' ' asRope trimRight = '' asRope.
	self assert: '	' asRope trimRight = '' asRope.
	self assert: 'foo' asRope trimRight = 'foo' asRope.
	self assert: ' foo ' asRope trimRight = ' foo' asRope.
	self assert: '  foo  ' asRope trimRight = '  foo' asRope.
	
	self assert: ('aabbaa' asRope trimRight: [ :each | each = $a ]) = 'aabb' asRope.
	self assert: ('bbaabb' asRope trimRight: [ :each | each = $a ]) = 'bbaabb' asRope.
	self assert: (  ' abc  d   ' asRope withoutTrailingBlanks = ' abc  d' asRope). ! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 18:34'!
testUpTo
	"self debug: #testUpTo"
	self assert: #up:to: asRope keywords = #(up: to:).
	self assert: #copy:from:to: asRope keywords = #(copy: from: to:).
	self assert: #up asRope keywords = #(up).
	self assert: #at: asRope keywords = #(at:).
	! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 18:37'!
testWithNoLineLongerThan
	"self run: #testWithNoLineLongerThan"
	self assert: ('Hello World' asRope withNoLineLongerThan: 5) = ('Hello', Rope newLineString, 'World').
	self shouldnt: [Rope crlfString withNoLineLongerThan: 5] raise: Error.
	self shouldnt: [('Hello'  asRope, Rope newLineString , Rope newLineString,'World') withNoLineLongerThan: 5] raise: Error.
	self assert: ('Sample text to line break at some point' asRope withNoLineLongerThan:  28)
		= ('Sample text to line break at', Rope newLineString, 'some point').
	self assert: ('Sample text' asRope , Rope newLineString, 'to line break', Rope newLineString, 'at some point' withNoLineLongerThan:  28)
		= ('Sample text'asRope , Rope newLineString, 'to line break', Rope newLineString, 'at some point').
! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 20:47'!
testWithoutLeadingDigits

	self assert: ( '234Whoopie' asRope withoutLeadingDigits = 'Whoopie').
	self assert: ( ' 4321 BlastOff!!'  asRope withoutLeadingDigits  = 'BlastOff!!' ).
	self assert: ( 'wimpy' asRope withoutLeadingDigits = 'wimpy' ).
	self assert: ( '  89Ten 12   ' asRope withoutLeadingDigits = 'Ten 12   ' ).
	self assert: ( '78 92' asRope withoutLeadingDigits = '' ).
	self assert: ( '9876 and with several words 9876' asRope withoutLeadingDigits  = 'and with several words 9876' ).
	self assert: (  '123another one123' asRope withoutLeadingDigits = 'another one123' ).

! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 20:42'!
testWithoutTrailingDigits

	self assert: ( 'Whoopie234' asRope withoutTrailingDigits = 'Whoopie').
	self assert: ( 'BlastOff!! 4321 ' asRope withoutTrailingDigits  = 'BlastOff!!' ).
	self assert: ( 'wimpy' asRope withoutTrailingDigits = 'wimpy' ).
	self assert: ( '  89Ten 12   ' asRope withoutTrailingDigits = '  89Ten' ).
	self assert: ( '78 92' asRope withoutTrailingDigits = '' ).
	self assert: ( 'and with several words 9876' asRope withoutTrailingDigits  = 'and with several words' ).
	self assert: (  '123another one123' asRope withoutTrailingDigits = '123another one' ).

! !

!RopeTest methodsFor: 'test - converting' stamp: 'KenD 2/23/2013 17:22'!
testindexOfstartingAt

	self assert: ('aa aa Ã©Ã© aa aa' asRope indexOf: $a startingAt: 8) = 12.
	self assert: ('aa aa Ã©Ã© aa aa' asRope indexOf: $z startingAt: 8) = 0.! !

!RopeTest methodsFor: 'test - paragraph' stamp: 'hjh 2/26/2013 09:25'!
testEncompassParagraph1
	"copied from Cuis 4.1 class StringTest"

	self assert: ('a' asRope encompassParagraph: (1 to: 0)) = (1 to: 1).
	self assert: ('a' asRope encompassParagraph: (1 to: 1)) = (1 to: 1).
	self assert: ('a' asRope encompassParagraph: (2 to: 1)) = (1 to: 1).! !

!RopeTest methodsFor: 'test - paragraph' stamp: 'hjh 2/26/2013 09:26'!
testEncompassParagraph2
    "copied from Cuis 4.1 class StringTest"

	self assert: ('ab' asRope encompassParagraph: (1 to: 0)) = (1 to: 2).
	self assert: ('ab' asRope encompassParagraph: (1 to: 1)) = (1 to: 2).
	self assert: ('ab' asRope encompassParagraph: (1 to: 2)) = (1 to: 2).
	self assert: ('ab' asRope encompassParagraph: (2 to: 1)) = (1 to: 2).
	self assert: ('ab' asRope encompassParagraph: (2 to: 2)) = (1 to: 2).
	self assert: ('ab' asRope encompassParagraph: (3 to: 2)) = (1 to: 2).! !

!RopeTest methodsFor: 'test - paragraph' stamp: 'hjh 2/26/2013 09:28'!
testEncompassParagraph3
"copied from Cuis 4.1 class StringTest"

self assert: ('a
' asRope encompassParagraph: (1 to: 0)) = (1 to: 2).
self assert: ('a
' asRope encompassParagraph: (1 to: 1)) = (1 to: 2).
self assert: ('a
' asRope encompassParagraph: (1 to: 2)) = (1 to: 2).
self assert: ('a
' asRope encompassParagraph: (2 to: 1)) = (1 to: 2).
self assert: ('a
' asRope encompassParagraph: (2 to: 2)) = (1 to: 2).
self assert: ('a
' asRope encompassParagraph: (3 to: 2)) = (3 to: 2).

self assert: ('a
zcxv' asRope encompassParagraph: (1 to: 0)) = (1 to: 2).
self assert: ('a
zcxv' asRope encompassParagraph: (1 to: 1)) = (1 to: 2).
self assert: ('a
zxcv' asRope encompassParagraph: (1 to: 2)) = (1 to: 2).
self assert: ('a
zxcv' asRope encompassParagraph: (2 to: 1)) = (1 to: 2).
self assert: ('a
zxcv' asRope encompassParagraph: (2 to: 2)) = (1 to: 2).
self assert: ('a
zxcv' asRope encompassParagraph: (3 to: 2)) = (3 to: 6).! !

!RopeTest methodsFor: 'test - paragraph' stamp: 'hjh 2/26/2013 09:30'!
testEncompassParagraph4
"copied from Cuis 4.1 class StringTest"

self assert: ('
b' asRope encompassParagraph: (1 to: 0)) = (1 to: 1).
self assert: ('
b' asRope encompassParagraph: (1 to: 1)) = (1 to: 1).
self assert: ('
b' asRope encompassParagraph: (1 to: 2)) = (1 to: 2).
self assert: ('
b' asRope encompassParagraph: (2 to: 1)) = (2 to: 2).
self assert: ('
b' asRope encompassParagraph: (2 to: 2)) = (2 to: 2).
self assert: ('
b' asRope encompassParagraph: (3 to: 2)) = (2 to: 2).
! !

!RopeTest methodsFor: 'test - paragraph' stamp: 'hjh 2/26/2013 09:31'!
testEncompassParagraph5
"copied from Cuis 4.1 class StringTest"

self assert: ('a
b' asRope encompassParagraph: (1 to: 0)) = (1 to: 2).
self assert: ('a
b' asRope encompassParagraph: (1 to: 1)) = (1 to: 2).
self assert: ('a
b' asRope encompassParagraph: (1 to: 2)) = (1 to: 2).
self assert: ('a
b' asRope encompassParagraph: (1 to: 3)) = (1 to: 3).
self assert: ('a
b' encompassParagraph: (2 to: 1)) = (1 to: 2).
self assert: ('a
b' asRope encompassParagraph: (2 to: 2)) = (1 to: 2).
self assert: ('a
b' asRope encompassParagraph: (2 to: 3)) = (1 to: 3).
self assert: ('a
b' asRope encompassParagraph: (3 to: 2)) = (3 to: 3).
self assert: ('a
b' asRope encompassParagraph: (3 to: 3)) = (3 to: 3).
self assert: ('a
b' asRope encompassParagraph: (4 to: 3)) = (3 to: 3).! !

!RopeTest methodsFor: 'test - paragraph' stamp: 'hjh 2/26/2013 09:36'!
testLineSeparators
	"
	Test that #newLineCharacter is considered a line separator and not a line terminator.
	This means that the last line never ends with a #newLineCharacter (although it might be empty!!)
	StringTest new testLineSeparators
	"
	"copied from Cuis 4.1 class StringTest"
	"self new testLineSeparators"
	
	| justAnLf linesBounds |
	linesBounds _ OrderedCollection new.
	justAnLf _ '
' asRope.
	justAnLf lineIndicesDo: [ :start :endWithoutDelimiters :end |
		linesBounds add: { start . endWithoutDelimiters. end }.
		].

	self assert: linesBounds size = 2 description: 'There should be two lines.'.

	self assert: linesBounds first first = 1 description: 'First line starts at position 1'.
	self assert: linesBounds first second = (linesBounds first first-1) description: 'First line is empty'.
	self assert: linesBounds first third = (linesBounds first second+1) description: 'First line is terminated by ab Lf'.

	self assert: linesBounds second first = ( linesBounds first third+1) description: 'Second line starts after end of first line'.
	self assert: linesBounds second second = (linesBounds second first-1) description: 'Second line is empty'.
	self assert: linesBounds second third = (linesBounds second second+0) description: 'Second line is not terminated by ab Lf'.! !

!RopeTest methodsFor: 'test - formatting' stamp: 'KenD 2/23/2013 18:21'!
testFormat

	self
		assert: ('This is {1} !!' asRope format: #('a test'))
		equals: 'This is a test !!'.

 	{ 
 		[ '\{ \} \\ foo {1} bar {2}' asRope format: { 12. 'string' } ] -> '{ } \ foo 12 bar string'. 
 		[ '\{ \} \\ foo {2} bar {1}' asRope format: { 'string'. 12 } ] -> '{ } \ foo 12 bar string'. 
 		[ '\{1}' asRope format: {} ] -> '{1}'. 
 		[ '\{1}{1}' asRope format: { $a } ] -> '{1}a'. 
 	} do: [ :each | 
		self assert: each key value equals: each value ]! !

!RopeTest methodsFor: 'test - copy' stamp: 'hjh 2/26/2013 09:32'!
testTrimmed
	self assert: '  a  ' asRope trimBoth = 'a' asRope. ! !

!RopeWrapper methodsFor: 'conversion' stamp: 'KenD 3/6/2013 17:18'!
asRope

	^ theRope! !

!RopeWrapper methodsFor: 'delegation' stamp: 'KenD 3/6/2013 17:11'!
doesNotUnderstand: aMessage
	"Delegate operations to theRope and Answer the result.
	Ir a result is a new rope, remember that as theRope"

	| result |
	result := aMessage sendTo: theRope.
	(result isKindOf: Rope)
	ifTrue: [ theRope := result ].
	
	^ result! !

!RopeWrapper methodsFor: 'delegation' stamp: 'KenD 3/14/2013 19:43'!
printString

	^theRope printString! !

!RopeWrapper methodsFor: 'delegation' stamp: 'KenD 3/14/2013 20:23'!
replaceFrom: start to: stop with: replacement startingAt: repStart 
		"Answer a new rope with the replacement.
		Nota Bene: The String method with this name is destructive!!"
		| repRope |
		repRope := replacement asRope.

	theRope := theRope copyReplaceFrom: start to: stop with: (repRope copyFrom: repStart to: (repRope size)).
	
	^theRope! !

!RopeWrapper methodsFor: 'initialize-release' stamp: 'KenD 3/6/2013 17:17'!
initialize

	"default"
	theRope := Rope emptyString.! !

!RopeWrapper methodsFor: 'initialize-release' stamp: 'KenD 3/6/2013 17:14'!
with: aRope
	"Initialize theRope"

	theRope := aRope! !

!RopeWrapper class methodsFor: 'instance creation' stamp: 'KenD 3/6/2013 17:13'!
with: aThing

	^ self basicNew with:( aThing asRope)! !

!Object methodsFor: '*ropes' stamp: 'KenD 3/5/2013 21:43'!
asRope
	"Answer a string that represents the receiver."

	^ self printString asRope! !

!Character methodsFor: '*ropes' stamp: 'KenD 2/9/2013 20:08'!
asRope
	"Answer self as a rope"

	^self asString asRope! !

!String methodsFor: '*ropes' stamp: 'KenD 9/10/2016 17:08:36'!
appendToRope: aRope

	^ ConcatRope concatenate: aRope with: self asRope! !

!String methodsFor: '*ropes' stamp: 'KenD 2/9/2013 19:48'!
asRope

	^FlatRope fromString: self! !

!String methodsFor: '*ropes' stamp: 'KenD 11/16/2016 14:53:01'!
asTextRope

	^ self asRope asText! !

!String class methodsFor: '*ropes' stamp: 'KenD 2/21/2013 20:09'!
caseInsensitiveOrder
	"private"

	^CaseInsensitiveOrder ! !

!String class methodsFor: '*ropes' stamp: 'KenD 2/21/2013 20:12'!
caseSensitiveLineEnders
	"private"

	^CSLineEnders ! !

!String class methodsFor: '*ropes' stamp: 'KenD 2/21/2013 20:13'!
caseSensitiveNonSeparators
	"private"

	^CSNonSeparators ! !

!String class methodsFor: '*ropes' stamp: 'KenD 2/21/2013 20:09'!
caseSensitiveOrder
	"private"

	^CaseSensitiveOrder ! !

!String class methodsFor: '*ropes' stamp: 'KenD 2/21/2013 20:13'!
caseSensitiveSeparators
	"private"

	^CSSeparators ! !

!String class methodsFor: '*ropes' stamp: 'KenD 2/21/2013 20:10'!
lowercasingTable
	"private"

	^LowercasingTable ! !

!String class methodsFor: '*ropes' stamp: 'KenD 2/21/2013 20:14'!
tokenish
	"private"

	^Tokenish ! !

!String class methodsFor: '*ropes' stamp: 'KenD 2/22/2013 22:02'!
uppercasingTable
	"private"

	^UppercasingTable ! !

!Array methodsFor: '*ropes' stamp: 'KenD 2/23/2013 20:19'!
asRope
	"Elements must be characters. Answer a rope"

	^ (String streamContents: [:s | self do: [ :elt | s nextPut: elt]]) asRope! !

!Text methodsFor: '*ropes' stamp: 'KenD 9/10/2016 16:55:31'!
appendToRope: aRope

	^ self asTextRope appendToText: aRope asTextRope! !

!Text methodsFor: '*ropes' stamp: 'KenD 2/21/2013 20:23'!
asRope
	"Answer my string as a Rope"

	^ (self string) asRope ! !

!Text methodsFor: '*ropes' stamp: 'KenD 2/21/2013 20:27'!
asTextRope
	"Answer a Text with my string as a Rope. Keep runs as well"

	^ Text string: (self string asRope) runs:(self runs copy)! !

!FileListWindow class methodsFor: '*ropes' stamp: 'KenD 5/31/2016 16:32'!
openRopeFileList
	"
	FileListWindow openRopeFileList
	"
	FileListWindow open: (RopeFileList new directory: DirectoryEntry currentDirectory) label: nil! !
Rope initialize!
ConcatRope initialize!
LazyFileRope initialize!
RopeTextEditor initialize!
