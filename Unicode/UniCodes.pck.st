'From Cuis 5.0 of 7 November 2016 [latest update: #3564] on 22 January 2019 at 4:55:09 pm'!
'Description UniCodes -- basic support for Unicode code points
                -- see http://unicode.org/'!
!provides: 'UniCodes' 1 52!
!requires: 'Collections-CompactArrays' 1 4 nil!
!requires: 'Goodies' 1 6 nil!
!requires: 'Cuis-Base' 50 3564 nil!
!requires: 'Compression' 1 nil nil!
SystemOrganization addCategory: #UniCodes!


!classDefinition: #PluggableUniTextModel category: #UniCodes!
PluggableTextModel subclass: #PluggableUniTextModel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'PluggableUniTextModel class' category: #UniCodes!
PluggableUniTextModel class
	instanceVariableNames: ''!

!classDefinition: #UniTextModel category: #UniCodes!
TextModel subclass: #UniTextModel
	instanceVariableNames: 'fileName timeStamp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniTextModel class' category: #UniCodes!
UniTextModel class
	instanceVariableNames: ''!

!classDefinition: #UniFileList category: #UniCodes!
FileList subclass: #UniFileList
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniFileList class' category: #UniCodes!
UniFileList class
	instanceVariableNames: ''!

!classDefinition: #UniString category: #UniCodes!
SequenceableCollection subclass: #UniString
	instanceVariableNames: ''
	classVariableNames: 'EmptyString Fibonacci MaxRopeDepth'
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniString class' category: #UniCodes!
UniString class
	instanceVariableNames: ''!

!classDefinition: #UniFlat category: #UniCodes!
UniString subclass: #UniFlat
	instanceVariableNames: 'charBlock length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniFlat class' category: #UniCodes!
UniFlat class
	instanceVariableNames: ''!

!classDefinition: #UniFlatSlice category: #UniCodes!
UniFlat subclass: #UniFlatSlice
	instanceVariableNames: 'startIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniFlatSlice class' category: #UniCodes!
UniFlatSlice class
	instanceVariableNames: ''!

!classDefinition: #UniLazyString category: #UniCodes!
UniString subclass: #UniLazyString
	instanceVariableNames: 'soFar uniFileStream fileName totalCount'
	classVariableNames: 'ChunkSize'
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniLazyString class' category: #UniCodes!
UniLazyString class
	instanceVariableNames: ''!

!classDefinition: #UniRepeatedCharString category: #UniCodes!
UniString subclass: #UniRepeatedCharString
	instanceVariableNames: 'char count'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniRepeatedCharString class' category: #UniCodes!
UniRepeatedCharString class
	instanceVariableNames: ''!

!classDefinition: #UniSplice category: #UniCodes!
UniString subclass: #UniSplice
	instanceVariableNames: 'depth totalLength leftRope rightRope'
	classVariableNames: 'MeldThreshold'
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniSplice class' category: #UniCodes!
UniSplice class
	instanceVariableNames: ''!

!classDefinition: #UniFileStream category: #UniCodes!
StandardFileStream subclass: #UniFileStream
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniFileStream class' category: #UniCodes!
UniFileStream class
	instanceVariableNames: ''!

!classDefinition: #UniTextEditor category: #UniCodes!
TextEditor subclass: #UniTextEditor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniTextEditor class' category: #UniCodes!
UniTextEditor class
	instanceVariableNames: ''!

!classDefinition: #UniForms category: #UniCodes!
AbstractFont subclass: #UniForms
	instanceVariableNames: ''
	classVariableNames: 'FormForMissingChar FormsArray'
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniForms class' category: #UniCodes!
UniForms class
	instanceVariableNames: ''!

!classDefinition: #UniTextModelMorph category: #UniCodes!
TextModelMorph subclass: #UniTextModelMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniTextModelMorph class' category: #UniCodes!
UniTextModelMorph class
	instanceVariableNames: ''!

!classDefinition: #InnerUniTextMorph category: #UniCodes!
InnerTextMorph subclass: #InnerUniTextMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'InnerUniTextMorph class' category: #UniCodes!
InnerUniTextMorph class
	instanceVariableNames: ''!

!classDefinition: #UniFillInTheBlankMorph category: #UniCodes!
FillInTheBlankMorph subclass: #UniFillInTheBlankMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniFillInTheBlankMorph class' category: #UniCodes!
UniFillInTheBlankMorph class
	instanceVariableNames: ''!

!classDefinition: #UniTextComposition category: #UniCodes!
TextComposition subclass: #UniTextComposition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniTextComposition class' category: #UniCodes!
UniTextComposition class
	instanceVariableNames: ''!

!classDefinition: #UniChar category: #UniCodes!
Object subclass: #UniChar
	instanceVariableNames: 'codePoint'
	classVariableNames: 'AI AL B2 BA BB BK CB CJ CL CM CP CR CasedLetterBit Cc Cf Cn Co Compositions ControlBit Cs DecimalProperty Decompositions DefaultBreakChar EX GL GeneralCategory GeneralPropMask H2 H3 HL HY ID IN IS JL JT JV L LF LV LVT LVTStateMap LVTStateVec LetterBit LineBreakNames LineBreakProperties LineBreakTable LineBreakTypeNames Ll Lm Lo Lt Lu MarkBit Mc Me Mn NL NS NU Nd Nl No NumberBit OP PO PR Pc Pd Pe Pf Pi Po PropertyNames Ps PunctuationBit QU RI SA SG SP SY Sc SeparatorBit Sk Sm SmalltalkSpecialChars So SymbolBit T ToCasefold ToLower ToUpper V WJ XX ZW ZeroCodePoints Zl Zp Zs'
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniChar class' category: #UniCodes!
UniChar class
	instanceVariableNames: ''!

!classDefinition: #UniStringWrapper category: #UniCodes!
Object subclass: #UniStringWrapper
	instanceVariableNames: 'uniString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodes'!
!classDefinition: 'UniStringWrapper class' category: #UniCodes!
UniStringWrapper class
	instanceVariableNames: ''!


!PluggableUniTextModel commentStamp: '<historical>' prior: 0!
A PluggableTextModel which does not squash font.!

!UniTextModel commentStamp: '<historical>' prior: 0!
I am a TextModel which handles Unicode using UniStrings.

fileName is the fullName of a file or nil.
timeStamp is zero or the time the file was read to create a view.

If a user goes to save a file, the timeStamp should not have changed.!

!UniFileList commentStamp: '<historical>' prior: 0!
I am a FileList which can display Unicode.

FileListWindow openUniFileList.
!

!UniString commentStamp: '<historical>' prior: 0!
I am the abstract class of immutable strings known as Ropes.  My instances hold Unicode 'strings' (really ropes).

	FileListWindow openUniFileList.
	"Will open a fileListWindow.  The user can right-click on a file name and
	select 'view as Unicode' to view & edit the file."
	
	 (UniString fromCodePointCollection: 
		 #( 16r4E7E 16r0020  16r5143 16r4EA8  16r5229 16r8C9E ) )  edit.

	UniString editFileFromUser. 
	"Will open a file dialog the user can select to edit a UTF-8 Unicode text file"
	

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


NB: Unicode strings are treated as strings and called UniStrings, even though represented internally as ropes.
Q:  If you call a tail a leg, how many legs does a dog have?
A:  Five
Correct Answer:  Four.  Calling a tail a leg does not make it one.  ;)
!

!UniFlat commentStamp: '<historical>' prior: 0!
A flat rope is basically a string.  My instances are "leaves" in a Rope "tree".

Internal storage is all the same size, either 8, 16, or 32 bit chunks holding Unicode codePoints.

This is to say, a CharBlock is one of ByteArray, ShortWordArray, or WordArray as required.

Do not use me directly, use UniString.!

!UniFlatSlice commentStamp: '<historical>' prior: 0!
I refer to an immutable charBlock slice shared with another UniString.!

!UniLazyString commentStamp: '<historical>' prior: 0!
I am a UniString which reads from a file as required to satisfy requests.

soFar is a UniString read so far.  The rest comes from uniFileStream.

I try to read ChunkSize codePoints when possible to satisfy a request.
!

!UniRepeatedCharString commentStamp: '<historical>' prior: 0!
I am a UniString consisting of a single UniChar repeated count times.!

!UniSplice commentStamp: '<historical>' prior: 0!
I am the splice/concatenation of two other UniStrings.

I am typically created as a side effect of operaions on UniStrings.
!

!UniFileStream commentStamp: '<historical>' prior: 0!
I read and/or write UniChars and UniStrings from/to UTF-8 Unicode files.

There are three levels of context:
	Bytes are the disk storage level (file position, buffering)
	UniChars [code points] are the units read/written (1 2 or 4 Utf8 bytes -> codePoint)
	Graphemes are the "display characters" people think of (Composed codePoints)
	
NOTE: File position is in BYTES but UTF-8 codePoints may consist of 1, 2, or 4 bytes each !!!!
	
A UniFileStream deals with the first two only.  Subclass me for Graphemes.

@@@FIXME:  Currently I assume well formed UTF-8.  I do not recover gracefully.

!

!UniTextEditor commentStamp: '<historical>' prior: 0!
I am an editor for Unicode text.
!

!UniForms commentStamp: '<historical>' prior: 0!
GNU Unifont Forms

This bitmapped font has glyphs for Unicode plane 0, the Basic Multilingual Plane, codePoints 0 through 16rFFFF (U+0000..U+FFFF).  See  http://unicode.org

The GNU Unifont glyphs are available at:  http://www.unifoundry.com/unifont.html

Licence is GPL 2 

See the class method:
	UniForms licence.

"U+4E7E is 1st YiJing Hexagram - a Chinese charater"

((UniForms formForCodePoint: 16r4E7E) magnifyBy: 4)  displayAt: 100@100. 
(UniForms sliceStart: 16r2701 size: 40) explore. "Dingbats"

| aMorph |
aMorph := ImageMorph new.
aMorph image: ((UniForms formForCodePoint: 16r4E7E)  magnifyBy: 8).
aMorph openInWorld .
!

!UniTextModelMorph commentStamp: '<historical>' prior: 0!
A TextModelMorph which does not squash font.!

!InnerUniTextMorph commentStamp: '<historical>' prior: 0!
An InnerTextMorph which does not squash the font.!

!UniFillInTheBlankMorph commentStamp: '<historical>' prior: 0!
A FillInTheBlankMorph which accepts Unicode text!

!UniTextComposition commentStamp: '<historical>' prior: 0!
TextComposition with the Unicode default font!

!UniChar commentStamp: '<historical>' prior: 0!
This is the abstract parent class of Unicode Characters with various representation sizes.
See http://Unicode.org for information.

UniChars are immutable.  

UniChars with the same codePoint are typically NOT unique.

Note that many "tests" (e.g. #isLetter #isUppercase) are property tests and are in category #properies, NOT category #testing.!

!UniStringWrapper commentStamp: '<historical>' prior: 0!
UniString ropes are immutable.  Actual operatrions yield new UniStrings.

A UniStringWrapper just keeps/remembers the last operation yielding a UniString.

This allows one to keep a variable up to date. See use of #nextPut: in UniCodesTests>>testWrapper

Use in place of WriteStream for #nextPut: and #nextPutAll.
  i.e. 
	UniStringWrapper with: ('abc' asUniString).
 vs:
	WriteStream on: 'abc',
!

!PluggableUniTextModel methodsFor: 'misc' stamp: 'KenD 10/25/2016 14:57:08'!
refetch
	"Answer true if actualContents was actually fetched."
	textGetter
		ifNil: [
			actualContents ifNil: [
				self actualContents: (Text
				initialFont: UniForms default
				stringOrText: UniString emptyString) ].
			^false ]
		ifNotNil: [
			self actualContents: (Text
				initialFont: UniForms default
				stringOrText: ((textProvider perform: textGetter) asUniString asText)).
			self changed: #refetched.
			^true ]! !

!UniTextModel methodsFor: 'commands' stamp: 'KenD 4/14/2013 19:59'!
acceptContentsFrom: aTextModelMorph
	"The user has typed Cmd+s -> Accept.
	Update backing file (query if needed).
	Answer true if OK, else false."
	
	(fileName isNil)
	ifTrue: [ ^(self saveToNewFileNotifying: aTextModelMorph) isNil not ]
	ifFalse: [ ^(self saveToOldFileNotifying: aTextModelMorph) isNil not ]! !

!UniTextModel methodsFor: 'commands' stamp: 'KenD 9/19/2016 12:58:35'!
basicReplaceFrom: start to: stop with: replacement
	"As requested. Basic service used by Undo / Redo. Does not genertate undo."

	actualContents 
	ifNil: [ actualContents := replacement asUniString asText ]
	ifNotNil: [ actualContents := actualContents 
						replaceFrom: start 
						to: stop 
						with: replacement asUniString asText ]! !

!UniTextModel methodsFor: 'accessing' stamp: 'KenD 4/19/2013 08:56'!
actualContents: aTextOrString
	"Reset contents"

	(actualContents class = UniLazyString)
		ifTrue: [ actualContents fileCleanup ]. "Remove old tmp file"
	actualContents _ aTextOrString ifNotNil: [ aTextOrString asUniString asText ].
	undoRedoCommands resetToStart.
	self changed: #actualContents! !

!UniTextModel methodsFor: 'accessing' stamp: 'KenD 4/8/2013 19:14'!
basicActualContents: aTextOrString
	"Do not throw events... Not nice... Use with care... Clean some day..."
	actualContents _ aTextOrString ifNotNil: [ aTextOrString asUniString asText ].
	undoRedoCommands resetToStart.! !

!UniTextModel methodsFor: 'accessing' stamp: 'KenD 4/14/2013 19:17'!
editorClass

	^UniTextEditor! !

!UniTextModel methodsFor: 'accessing' stamp: 'KenD 4/14/2013 14:57'!
fileName

	^ fileName! !

!UniTextModel methodsFor: 'accessing' stamp: 'KenD 9/21/2016 13:31:15'!
labelString

	^ 'Unicode Edit(''', self fileName asFileEntry name, ''')' "base name"! !

!UniTextModel methodsFor: 'accessing' stamp: 'KenD 4/30/2014 16:59'!
scrollDeltaHeight
	"Return the increment in pixels which this pane should be scrolled."

	^ UniForms height! !

!UniTextModel methodsFor: 'accessing' stamp: 'KenD 4/14/2013 14:56'!
timeStamp

	^ timeStamp! !

!UniTextModel methodsFor: 'user interface support' stamp: 'KenD 9/11/2016 11:42:17'!
editorClassFor: textGetter

	^ UniTextEditor! !

!UniTextModel methodsFor: 'file handling' stamp: 'KenD 9/15/2016 08:45:25'!
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
			actualContents := (UniString fromFile: aFile pathName) asText.
			^self
		]
	].
	"Not a readable file"
	^nil

			! !

!UniTextModel methodsFor: 'file handling' stamp: 'KenD 8/28/2016 14:48:38'!
save
	"Answer true if OK, else false"

	| dirEntry |	
	dirEntry :=  fileName asFileEntry.
	(timeStamp = dirEntry modificationTime) 
	ifFalse: [
		(self confirm: 
'Caution!! Contents were saved
elsewhere since you started
editing them here.  Accept anyway?' ) 
		ifFalse: [ ^ false ]
	].

	^ self saveToFile 
! !

!UniTextModel methodsFor: 'file handling' stamp: 'KenD 8/28/2016 14:06:33'!
saveAs
	"Answer true if OK, else nil"

	| dialogResult |	
	dialogResult := (StandardFileMenu new) 
   					newFileFrom: (DirectoryEntry currentDirectory)
					withPattern: '*' ; 
					startUpWithCaption: 'Type new file name for save'.
	
	(dialogResult isNil)
	ifTrue: [ ^ nil ]
	ifFalse: [ ^ self saveAs: ( dialogResult directory, '/', dialogResult name )]
! !

!UniTextModel methodsFor: 'file handling' stamp: 'KenD 9/11/2016 16:16:21'!
saveAs: aFileName
	"Answer true if OK, else nil"
	
	|  |	
	fileName := aFileName asString.
	^ self saveToFile 

! !

!UniTextModel methodsFor: 'file handling' stamp: 'KenD 8/29/2016 15:26:19'!
saveToFile
	"Answer true if OK, else nil"

	| uniFile |	
	uniFile := UniFileStream new open: fileName forWrite: true.
	[ uniFile nextPutAll: (self actualContents string) ]
			ensure: [ uniFile close ].		

	timeStamp := fileName asFileEntry modificationTime.
	
	^ true
! !

!UniTextModel methodsFor: 'file handling' stamp: 'KenD 9/9/2016 12:16:52'!
saveToNewFileNotifying: aTextModelMorph
	"Answer true if OK, else nil"

	| dialogResult |	
	dialogResult := (StandardFileMenu new) 
   					newFileFrom: (DirectoryEntry currentDirectory)
					withPattern: '*' ; 
					startUpWithCaption: 'Type new file name for save'.
	
	(dialogResult isNil)
	ifTrue: [ ^nil ]
	ifFalse: [ | uniFile pathName  |
		fileName := dialogResult directory pathName, '/', dialogResult name.
		"@@@FIXME Notify aTextModelMorph"
		^ self saveToFile
	]! !

!UniTextModel methodsFor: 'file handling' stamp: 'KenD 8/28/2016 14:12:34'!
saveToOldFileNotifying: aTextModelMorph
	"Answer true if OK, else nil"
	
	| dirEntry |	
	dirEntry :=  fileName asFileEntry.
	(timeStamp = dirEntry  modificationTime) 
	ifFalse: [
		(self confirm: 
'Caution!! Contents were saved
elsewhere since you started
editing them here.  Accept anyway?' ) 
		ifFalse: [ aTextModelMorph flash. ^nil ]
	].

	"@@@FIXME Notify aTextModelMorph"

	^ self saveToFile

! !

!UniTextModel methodsFor: 'initialize-release' stamp: 'KenD 4/14/2013 14:55'!
initialize
	"Initialize the state of the receiver with its default contents."

	actualContents _ UniString emptyString asText.
	timeStamp := 0.
	self flushUndoRedoCommands! !

!UniTextModel methodsFor: 'initialize-release' stamp: 'KenD 8/27/2016 14:54:13'!
openLabel: aString 
	"Create a standard system view of the model, me, and open it."
	
	SystemWindow editText: self label: aString wrap: true! !

!UniTextModel methodsFor: 'misc' stamp: 'KenD 8/29/2016 15:14:17'!
logUndoAndReplaceFrom: start to: stop with: replacement
	"As requested."

	| command now |
	"Time millisecondClockValue rolls over and is generally not adviced.
	But here, we don't care. A user edit doing during rollover would be split  in two, as if the user did a pause.
	Not a problem."
	now _ Time millisecondClockValue.
	command _ self commandForReplaceFrom: start to: stop with: replacement.
	(stop+1 = start and: [ lastEditTimeStamp notNil and: [ now - lastEditTimeStamp < 1000 ]])
		ifTrue: [
			"Don't use the command we just built"
			undoRedoCommands last appendUniStringToNew: replacement
			]
		ifFalse: [
			undoRedoCommands
				nextPut: command;
				truncateAtPosition.	"To disable redo of previous commands, now invalidated."
			].
	command doOn: self.
	lastEditTimeStamp _ now! !

!UniTextModel methodsFor: 'misc' stamp: 'KenD 8/28/2016 13:19:30'!
refetch
	"Answer true if actualContents was actually fetched."
	
	(self fileName) ifNotNil: [ | dirEntry  |	
		"Reset timeStamp"
		dirEntry :=  fileName asFileEntry .
		timeStamp := dirEntry modificationTime.
		"(Re)read contents"
		actualContents := (UniString fromFile: dirEntry pathName) asText.
	].

	self changed: #refetched.
		
	^true! !

!UniTextModel class methodsFor: 'instance creation' stamp: 'KenD 4/14/2013 15:38'!
fromFile: aFileName
	"Answer an instance of me if aFileName denotes a readable text file, else nil"

	^self new initialize fromFile: aFileName! !

!UniTextModel class methodsFor: 'instance creation' stamp: 'KenD 9/15/2016 14:15:04'!
fromUser
	"Put up a StandardFileMenu and let the user choose a file to read into me."
	"Answer an instance of me or nil"
"
	UniTextModel fromUser.
"		
	| dialogResult textModel |
	dialogResult := (StandardFileMenu new)
						oldFileFrom: (DirectoryEntry currentDirectory) ;
	 					startUpWithCaption: 'Select a UTF-8 Unicode text file'.
	
	((dialogResult isNil) or: [dialogResult isDirectory]) ifTrue: [ ^nil ].

	textModel := self new 
		fromFile: ( (dialogResult directory pathName) , '/' , (dialogResult name) ).
		
	SystemWindow 
		editText: textModel
			label: 'Unicode Edit(''',  (dialogResult name) ,  ''')'
			wrap: true.
	
	^ textModel! !

!UniTextModel class methodsFor: 'instance creation' stamp: 'KenD 8/27/2016 14:54:23'!
openLabel: aString

	self new openLabel: aString! !

!UniFileList methodsFor: 'contents' stamp: 'KenD 5/5/2014 21:58'!
acceptedContents
	| aStringOrText |
	aStringOrText := self acceptedStringOrText.
	(aStringOrText is: #Text)
	ifTrue: [ ^ aStringOrText ].
	^ Text
		initialFont: (
			(aStringOrText is: #UniString) 
					ifTrue: [UniForms default] 
					ifFalse: [Preferences standardCodeFont]
		)
		stringOrText: aStringOrText! !

!UniFileList methodsFor: 'private' stamp: 'KenD 4/12/2013 15:59'!
acceptedStringOrText
	"Answer the contents of the file, reading it first if needed."
	"Possible brevityState values:
		FileList,
		fullFile, briefFile, needToGetFull, needToGetBrief,
		fullHex, briefHex, needToGetFullHex, needToGetBriefHex"

	(listIndex = 0) | (brevityState == #FileList) ifTrue: [ ^ self defaultContents ].  "no file selected"
	
	({ #fullFile. #fullHex. #fullUnicode. #briefFile. #briefHex. #briefUnicode. }
		includes: 	brevityState) 
	ifTrue: [ ^ acceptedContentsCache ].

	brevityState == #needToGetUnicode ifTrue: [^ self readContentsUnicode: false ].
"	brevityState == #needToGetFullUnicode ifTrue: [^ self readContentsUnicode: false ].
	brevityState == #needToGetBriefUnicode ifTrue: [^ self readContentsUnicode: true ].
"
	brevityState == #needToGetFullHex ifTrue: [^ self readContentsHex: false ].
	brevityState == #needToGetBriefHex ifTrue: [^ self readContentsHex: true ].

	brevityState == #needToGetFull ifTrue:  [^ self readContentsBrief: false ].
	brevityState == #needToGetBrief ifTrue: [ ^ self readContentsBrief: true ].  "default"

	self halt: 'unknown state ' , brevityState printString! !

!UniFileList methodsFor: 'private' stamp: 'KenD 9/11/2016 15:26:27'!
put: aText
	"Private - put the supplied text onto the file"

	| ff type |
	(brevityState == #fullUnicode)
	ifTrue: [ff _ UniFileStream new open: self fullName forWrite:  true.
		Cursor write showWhile: [ff nextPutAll: aText asString; close].
		fileName = ff localName 
			ifTrue: [ acceptedContentsCache _ aText asUniString asText]  "@@@UniLazyString@@@"
			ifFalse: [self updateFileList].		"user renamed the file"
		^ true  "accepted"].

	listIndex = 0 ifTrue:
		[self inform: 'No fileName is selected'.
		^ false  "failed"].
	type _ 'These'.
	brevityState = #fullFile ifTrue: [type _ 'Ascii'].
	brevityState = #briefFile ifTrue: [type _ 'Abbreviated'].
	brevityState = #briefHex ifTrue: [type _ 'Abbreviated'].
	brevityState = #fullHex ifTrue: [type _ 'Hexadecimal'].
	brevityState = #briefUnicode ifTrue: [type _ 'Unicode'].
"	brevityState = #fullUnicode ifTrue: [type _ 'Unicode']."
	brevityState = #FileList ifTrue: [type _ 'Directory'].
	self inform: ('{1} contents cannot
meaningfully be saved at present.' format:{type}).
	^ false  "failed"
! !

!UniFileList methodsFor: 'private' stamp: 'KenD 9/15/2016 08:42:19'!
readContentsUnicode: brevity
	"retrieve the contents from the external file unless it is too long.
	  Don't create a file here.  Check if exists."
	| fileEntry  "uniString"  |

	fileEntry := self fullName asFileEntry. 
	(fileEntry exists) ifFalse: [^ 'For some reason, this file cannot be read'].
	(fileEntry isDirectory) ifTrue: [^ 'This ''file'' is a directory'].
"	uniString := uniFileStream contentsOfEntireFile.
	brevityState := #fullUnicode.
	uniFileStream close. 
	acceptedContentsCache := uniString.
"
	brevityState := #fullUnicode.
	
"	 ^ acceptedContentsCache "

	(acceptedContentsCache class = UniLazyString)
		ifTrue: [ acceptedContentsCache fileCleanup ]. "Remove old tmp file"
		
	^ acceptedContentsCache := (UniString fromFile: fileEntry pathName) asText
! !

!UniFileList methodsFor: 'file list menu' stamp: 'KenD 9/11/2016 08:30:09'!
editorClass

	^ UniTextEditor! !

!UniFileList methodsFor: 'file list menu' stamp: 'KenD 4/12/2013 15:47'!
itemsForAnyFile2
	"Answer a list of universal services that could apply to any file"
	
	| services |
	services := super itemsForAnyFile2.
	services addFirst: self serviceGetUnicode.
	^services

! !

!UniFileList methodsFor: 'user interface support' stamp: 'KenD 9/11/2016 15:41:57'!
editorClassFor: textGetter

"Transcript newLine; show: 'UniFileList editorClassFor: #' , textGetter asString."

	(textGetter = #acceptedContents)
	ifFalse: [ ^ super editorClassFor: textGetter ]
	ifTrue: [ ^ UniTextEditor ]! !

!UniFileList methodsFor: 'file menu action' stamp: 'KenD 4/12/2013 15:56'!
getUnicode
	"Get contents of file again, and display in Unicode. Do this by making the cancel string be the contents, and doing a cancel."

	Cursor read showWhile: [
		brevityState := #needToGetUnicode.  
		"See method: acceptedStringOrText"
		self acceptedContentsChanged ]! !

!UniFileList methodsFor: 'own services' stamp: 'KenD 4/12/2013 14:42'!
serviceGetUnicode

	^  (SimpleServiceEntry 
			provider: self 
			label: 'view as Unicode' 
			selector: #getUnicode
			description: 'view as Unicode')
			! !

!UniString methodsFor: 'copying' stamp: 'KenD 9/4/2016 16:52:24'!
, aStringOrText

	^ aStringOrText appendToUniString: self! !

!UniString methodsFor: 'copying' stamp: 'KenD 9/4/2016 16:00:12'!
append:  aStringOrText

	^ aStringOrText appendToUniString: self! !

!UniString methodsFor: 'copying' stamp: 'KenD 9/4/2016 16:15:19'!
appendToString:  aString

	^ UniSplice splice: aString asUniString with: self! !

!UniString methodsFor: 'copying' stamp: 'KenD 9/4/2016 18:57:17'!
appendToText: aText

	| textStringSize |
	textStringSize := aText string size.
	^ aText asUniString
			 replaceFrom: textStringSize + 1
			 to: textStringSize 
			 with: self asText! !

!UniString methodsFor: 'copying' stamp: 'KenD 9/4/2016 15:59:41'!
appendToUniString:  aUniString

	^ UniSplice splice: aUniString with: self! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/19/2013 20:02'!
contractTo: smallSize
	"return myself or a copy shortened by ellipsis to smallSize"
	| leftSize |
	self size <= smallSize
		ifTrue: [^ self].  "short enough"
	smallSize < 5
		ifTrue: [^ self copyFrom: 1 to: smallSize].    "First N characters"
	leftSize _ smallSize-2//2.
	^ self copyReplaceFrom: leftSize+1		"First N/2 ... last N/2"
		to: self size - (smallSize - leftSize - 3)
		with: '...'
"
	'A clear but rather long-winded summary' contractTo: 18
"! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/18/2013 16:08'!
copyFrom: start to: stop

	self subclassResponsibility ! !

!UniString methodsFor: 'copying' stamp: 'KenD 7/1/2014 19:56'!
copyReplaceAll: oldSubstring with: newSubstring asTokens: ifTokens
	"Answer a copy of the receiver in which all occurrences of
	oldSubstring have been replaced by newSubstring.
	ifTokens (valid for Strings only) specifies that the characters
	surrounding the recplacement must not be alphanumeric.
		Bruce Simth,  must be incremented by 1 and not 
	newSubstring if ifTokens is true.  See example below. "

	| aString startSearch currentIndex endIndex |
	aString _ self.
	startSearch _ 1.
	[(currentIndex _ aString indexOfSubCollection: oldSubstring startingAt: startSearch)
			 > 0]
		whileTrue: 
		[endIndex _ currentIndex + oldSubstring size - 1.
		(ifTokens not
			or: [(currentIndex = 1
					or: [(aString at: currentIndex-1) isGenerallyValidInIdentifiers not])
				and: [endIndex = aString size
					or: [(aString at: endIndex+1) isGenerallyValidInIdentifiers not]]])
			ifTrue: [aString _ aString
					copyReplaceFrom: currentIndex
					to: endIndex
					with: newSubstring.
				startSearch _ currentIndex + newSubstring size]
			ifFalse: [
				ifTokens 
					ifTrue: [startSearch _ currentIndex + 1]
					ifFalse: [startSearch _ currentIndex + newSubstring size]]].
	^ aString
! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/30/2013 20:34'!
copyReplaceFrom: start to: stop with: aStringOrUniString
	"Answer a copy of the receiver satisfying the following conditions: If 
	stop is less than start, then this is an insertion; stop should be exactly 
	start-1, start = 1 means insert before the first character, start = size+1 
	means append after last character. Otherwise, this is a replacement; start 
	and stop have to be within the receiver's bounds."

	^((self copyFrom: 1 to: (start - 1)) , aStringOrUniString asUniString , (self copyFrom: (stop + 1) to: (self size))) ! !

!UniString methodsFor: 'copying' stamp: 'KenD 7/1/2014 19:58'!
copyReplaceTokens: oldSubstring with: newSubstring 
	"Replace all occurrences of oldSubstring that are surrounded
	by non-alphanumeric characters"
	^ self copyReplaceAll: oldSubstring with: newSubstring asTokens: true
"
	'File asFile Files File''s File' asUniString copyReplaceTokens: 'File' with: 'Snick'.
"! !

!UniString methodsFor: 'copying' stamp: 'KenD 9/5/2016 09:15:28'!
copyToString: aString from: start to: stop

	^ aString asUniString copyReplaceFrom: start to: stop with: self ! !

!UniString methodsFor: 'copying' stamp: 'KenD 9/5/2016 09:15:40'!
copyToText: aText from: start to: stop

	^ aText asUniString copyReplaceFrom: start to: stop with: self asText! !

!UniString methodsFor: 'copying' stamp: 'KenD 4/4/2013 20:06'!
onlyLetters
	"answer the receiver with only letters"
	^ self select:[:each | each isLetter]! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 22:26'!
padLeftTo: totalLength

	^ self padded: #left  to: totalLength  with: Character space! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/18/2013 16:09'!
padLeftTo: totalLength with: aChar

	^ self padded: #left  to: totalLength  with: aChar! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 22:26'!
padRightTo: totalLength

	^ self padded: #right  to: totalLength  with: Character space.! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/18/2013 16:09'!
padRightTo: totalLength with: aChar

	^ self padded: #right  to: totalLength  with: aChar! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 22:26'!
padded: leftOrRight to: length with: char

	| padRope padLen |
	padLen := length - (self size)..
	padLen <= 0 ifTrue: [ ^self ].
	
	padRope := (String new: padLen withAll: char) asUniString .  "@@FIXME: for UniChars"
	
	leftOrRight = #left ifTrue:
		[^ (padRope , self) ].
	leftOrRight = #right ifTrue:
		[^ (self ,  padRope) ].! !

!UniString methodsFor: 'copying' stamp: 'KenD 4/3/2013 15:53'!
replaceFrom: start to: stop with: replacement startingAt: repStart
		"Answer a new UniString rope with the replacement.
		Nota Bene: The String method with this name is destructive!!!!"
		| repRope |
		repRope := replacement asUniString.
"	
		self halt: 
'The String method with this name is destructive. The UniString version is not, Use UniStringWrapper'.
"	
		^ self copyReplaceFrom: start to: stop with: (repRope copyFrom: repStart to: (repRope size)).! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:36'!
trimBoth
	"Trim separators from both sides of the receiving string."

"
`	'  a bc  ' asUniString trimBoth.
"
	^ self trimBoth: [ :char | char isSeparator ]! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:18'!
trimBoth: aBlock
	"Trim characters satisfying the condition given in aBlock from both sides of the receiving string."

	^ self trimLeft: aBlock right: aBlock! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:18'!
trimLeft
	"Trim separators from the left side of the receiving string."
	
	^ self trimLeft: [ :char | char isSeparator ] ! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:17'!
trimLeft: aBlock
	"Trim characters satisfying the condition given in aBlock from the left side of the receiving string."
	
	^ self trimLeft: aBlock right: [ :char | false ]! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:17'!
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

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:17'!
trimRight
	"Trim separators from the right side of the receiving string."
	
	^ self trimRight: [ :char | char isSeparator ]! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:17'!
trimRight: aBlock
	"Trim characters satisfying the condition given in aBlock from the right side of the receiving string."
	
	^ self trimLeft: [ :char | false ] right: aBlock! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:18'!
truncateTo: smallSize
	"return myself or a copy shortened to smallSize"

	^ self size <= smallSize
		ifTrue:
			[self]
		ifFalse:
			[self copyFrom: 1 to: smallSize]! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:33'!
withBlanksCondensed
	"Return a copy of the receiver with leading/trailing blanks removed
	 and consecutive white spaces condensed as a single space."

	| trimmed lastWasBlank result |
	trimmed _ self withBlanksTrimmed.
	result := UniStringWrapper new.
		
	lastWasBlank _ false.
	trimmed do: [ :c |
		(c isSeparator)
			ifTrue: [ lastWasBlank ifFalse: [ result nextPut: UniChar space ]]
			ifFalse: [ result nextPut: c ].
		lastWasBlank _ c isSeparator 
	].
	^ result asUniString 

	" 
	' abc  d   ' asUniString withBlanksCondensed
	' abc  d
	s
	as   zz 	q 			q' asUniString withBlanksCondensed
	"! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:37'!
withBlanksTrimmed
	"Return a copy of the receiver from which leading and trailing blanks have been trimmed."

	^self trimBoth

"
	 ' abc  d   ' asUniString withBlanksTrimmed
"
! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:27'!
withNewLines
	"Return a copy of the receiver in which backslash (\) characters have been replaced with newLine (i.e. Lf)."

	^ self collect: [ :c | c = $\ ifTrue: [ Character newLineCharacter ] ifFalse: [ c ]].! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:25'!
withoutLeadingDigits
	"Answer the portion of the receiver that follows any leading series of digits and blanks.  If the receiver consists entirely of digits and blanks, return an empty string.
	See withoutTrailingDigits"
	| firstNonDigit |
	firstNonDigit _ (self findFirst: [ :m | m isDigit not and: [ m isSpace not  ]]).
	^ firstNonDigit > 0
		ifTrue: [ self copyFrom: firstNonDigit  to: self size ]
		ifFalse: [ UniString emptyString ]

"
'234Whoopie' asRope withoutLeadingDigits
' 4321 BlastOff!!'  asRope withoutLeadingDigits
'wimpy'  asRope withoutLeadingDigits
'  89Ten 12   ' asRope withoutLeadingDigits
'78 92' asRope withoutLeadingDigits
'9876 and with several words 9876' asRope withoutLeadingDigits
' 123another one123 '  asRope withoutLeadingDigits
"! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:25'!
withoutTrailingBlanks
	"Return a copy of the receiver from which trailing blanks have been trimmed."

	| last |
	last _ self findLast: [:c | c isSeparator not].
	last = 0 ifTrue: [^ UniString emptyString ].  "no non-separator character"
	^ self copyFrom: 1 to: last

"
	 ' abc  d   ' asUniString withoutTrailingBlanks
"
! !

!UniString methodsFor: 'copying' stamp: 'KenD 3/20/2013 21:25'!
withoutTrailingDigits
	"Answer the portion of the receiver that precedes any trailing series of digits and blanks.  If the receiver consists entirely of digits and blanks, return an empty string.
	See #withoutLeadingDigits"
	| lastNonDigit |
	lastNonDigit _ (self findLast: [ :m | m isDigit not and: [ m isSpace not ]]).
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

!UniString methodsFor: 'comparing' stamp: 'KenD 3/19/2013 12:27'!
< aString

	"Compare codePoints"
	^(self compare: aString) = 1! !

!UniString methodsFor: 'comparing' stamp: 'KenD 3/19/2013 12:28'!
<= aString

	"Compare codePoints"
	^(self compare: aString) < 3! !

!UniString methodsFor: 'comparing' stamp: 'KenD 3/19/2013 12:27'!
= aString

	"Compare codePoints"
"	| otherUniString |
	otherUniString := aString asUniString.
	(self size = otherUniString size) ifFalse: [ ^false ].
	(self size isZero) ifTrue: [ ^true ].
	1 to: self size do: [ :index |
		(self codePointAt: index) = (otherUniString codePointAt: index)
		ifFalse: [ ^false ]
	].
	^ true
"
	^ (self compare: aString) = 2! !

!UniString methodsFor: 'comparing' stamp: 'KenD 3/19/2013 12:27'!
> aString

	"Compare codePoints"
	^(self compare: aString) = 3! !

!UniString methodsFor: 'comparing' stamp: 'KenD 3/19/2013 12:28'!
>= aString

	"Compare codePoints"
	^(self compare: aString) > 1! !

!UniString methodsFor: 'comparing' stamp: 'KenD 3/19/2013 12:24'!
compare:  otherString
	"Return 1, 2 or 3, if self is <, =, or > otherString based on simple codePoints"
	"NOTA BENE: No collation assumed"

	| len1 len2 c1 c2 otherUni |
	otherUni := otherString asUniString.

	len1 _ self size.
	len2 _ otherUni size.
	1 to: (len1 min: len2) do: [ :index |
		c1 _ self codePointAt: index.
		c2 _ otherUni codePointAt: index.
		c1 = c2 ifFalse: 
			[c1 < c2 ifTrue: [^ 1] ifFalse: [^ 3]]
	].
	len1 = len2 ifTrue: [^ 2].
	len1 < len2 ifTrue: [^ 1] ifFalse: [^ 3].
! !

!UniString methodsFor: 'comparing' stamp: 'KenD 3/21/2013 18:22'!
compare:  otherString caseSensitive: aBool
	"Return 1, 2 or 3, if self is <, =, or > otherString based on simple codePoints"
	"NOTA BENE: No collation assumed"

	| len1 len2 c1 c2 otherUni |
	aBool ifTrue: [^ self compare: otherString ].
	
	"OK, do case insensitive compare"
	otherUni := otherString asUniString.

	len1 _ self size.
	len2 _ otherUni size.
	1 to: (len1 min: len2) do: [ :index |
		c1 _ self codePointAt: index.
		c2 _ otherUni codePointAt: index.
		(c1 caseInsensitiveEqual:  c2) ifFalse: 
			[(c1 caseInsensitiveLess: c2) ifTrue: [^ 1] ifFalse: [^ 3]]
	].
	(len1 caseInsensitiveEqual: len2) ifTrue: [^ 2].
	(len1 caseInsensitiveLess: len2) ifTrue: [^ 1] ifFalse: [^ 3].
! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/18/2013 16:12'!
adaptToCollection: rcvr andSend: selector
	"If I am involved in arithmetic with a collection, convert me to a number."

	^ rcvr perform: selector with: self asNumber! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/18/2013 16:12'!
adaptToNumber: rcvr andSend: selector
	"If I am involved in arithmetic with a number, convert me to a number."

	^ rcvr perform: selector with: self asNumber! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/18/2013 16:12'!
adaptToPoint: rcvr andSend: selector
	"If I am involved in arithmetic with a point, convert me to a number."

	^ rcvr perform: selector with: self asNumber! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/19/2013 19:11'!
asCamelCase
	"Answer a new String, without any whitespace, and with words capitalized (Except for the first one)"
"
	' how do you do? ' asUniString asCamelCase
"
	| result capitalize wroteSome inStream |
	result := UniStringWrapper new.
	wroteSome _ false.
	capitalize _ false.
	inStream _ self readStream.
	
	[ inStream atEnd ] whileFalse: [ | c |
		c _ inStream next.
		c isSeparator
		ifTrue: [ capitalize _ true ]
		ifFalse: [
			capitalize & wroteSome ifTrue: [ c _ c asUppercase ].
			result nextPut: c.
			wroteSome _ true.
			capitalize _ false 
		]
	].
	^ result asUniString ! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/19/2013 20:09'!
asFileName
	"Answer a String made up from the receiver that is an acceptable file 
	name."

	^self asString asFileEntry pathName
! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/19/2013 19:04'!
asIdentifier: shouldBeCapitalized
	"Return a legal identifier, with first character in upper case if shouldBeCapitalized is true, else lower case.  This will always return a legal identifier, even for an empty string"

	| aRope firstChar firstLetterPosition |
	aRope _ self select: [:el | el isGenerallyValidInIdentifiers].
	firstLetterPosition _ aRope findFirst: [:ch | ch isGenerallyValidStartOfInIdentifiers].
	aRope _ firstLetterPosition = 0
		ifFalse:
			[aRope copyFrom: firstLetterPosition to: aRope size]
		ifTrue:
			['a' asUniString , aRope].
	firstChar _ shouldBeCapitalized ifTrue: [aRope first asUppercase] ifFalse: [aRope first asLowercase].

	^ firstChar asUniString , (aRope copyFrom: 2 to: aRope size)
"
'234Fred987' asRope asIdentifier: false.  
'235Fred987'  asRope asIdentifier: true
''  asRope asIdentifier: true. 
'()87234'  asRope asIdentifier: false. 
'())z>=PPve889  U >'  asRope asIdentifier: false. 

"! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/20/2013 22:20'!
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
'1796exportFixes-tkMX' asUniString asInteger
'1848recentLogFile-sw'  asUniString asInteger
'donald'  asUniString asInteger
'abc234def567' asUniString asInteger
"! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/19/2013 20:16'!
asLegalSelector

	"Answer as much of me as possible as a legal Smalltalk selector"
	| toUse |
	toUse _ UniStringWrapper new.
	self do:
		[:char | char isGenerallyValidInIdentifiers ifTrue: [ toUse nextPut: char]].
		
	(self size = 0 or: [self first isGenerallyValidStartOfInIdentifiers not])
	ifTrue:	[ toUse _ ( 'v' asUniString) , (toUse asUniString)].

	^ (toUse asUniString withFirstCharacterDownshifted )

"
'234znak 43 ) 2' asUniString asLegalSelector.
"! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/19/2013 18:22'!
asNumber 
	"Answer the Number created by interpreting the receiver as the string 
	representation of a number."
	
	^Number readFrom: self readStream! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/19/2013 18:46'!
asSignedInteger
	"Answer the Integer created by interpreting the receiver as the string representation of an integer, possibly with a leading minus sign.  Answer nil if no digits, else find the first digit and then all consecutive digits after that"

	| startPosition tail endPosition  |
	startPosition _ self findFirst: [:ch | ch isDigit or: [ch = $-]].
	startPosition = 0 ifTrue: [^ nil].
	tail _ self copyFrom: startPosition to: self size.
	endPosition _ tail findFirst: [:ch | ch isDigit not and: [(ch = $-) not]].
	endPosition = 0 ifTrue: [endPosition _ tail size + 1].
	( (tail at: 1) = $- ) "Negative?"
	ifTrue: [ ^ (Number readFrom: (tail copyFrom: 2 to: endPosition - 1) readStream) negated]
	ifFalse: [ ^ Number readFrom: (tail copyFrom: 1 to: endPosition - 1) readStream ].

"
'znak -58 to wit' asUniString asSignedInteger
"! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/19/2013 21:06'!
asSmalltalkComment
	"Answer this UniString, munged so that it can be treated as a comment in Smalltalk code.  Quote marks are added to the beginning and end of the string, and whenever a solitary quote mark appears within the string, it is doubled"

	| result |
	
	result := UniStringWrapper new.
	
	result nextPut: $" .

	self do: [ :char |
		result nextPut: char.
		(char = $") ifTrue: [
			result nextPut: char.
		] 
	]. 

	result nextPut: $".

	^ result asUniString
	! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/31/2013 22:59'!
asString

	^self stringRepresentation! !

!UniString methodsFor: 'converting' stamp: 'KenD 8/28/2016 14:46:24'!
asStringOrText
	"Answer this string."

	^ self asString! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/20/2013 08:18'!
asSymbol
	"Answer the unique Symbol whose characters are the characters of the 
	string."

	^Symbol intern: self asString! !

!UniString methodsFor: 'converting' stamp: 'KenD 8/27/2016 19:19:26'!
asText
	"Answer a Text whose ''string'' is the receiver."

	^ (Text string: self) font: UniForms default! !

!UniString methodsFor: 'converting' stamp: 'KenD 2/17/2013 15:54'!
asUniString

	^self! !

!UniString methodsFor: 'converting' stamp: 'KenD 4/5/2013 16:29'!
asUtf8
	"Answer a byte array Utf8 encoding"
	
	^ ByteArray streamContents: [ :stream |
		self codePointsDo: [ :code | code asUtf8toStream: stream ]
	  ]! !

!UniString methodsFor: 'converting' stamp: 'KenD 4/5/2013 18:22'!
asUtf8: convertEmbeddedNCRs
	"Convert the given string to UTF-8.  Answer a ByteArray.
	
	If convertEmbeddedNCRs, then convert embedded NCRs such as '&#956;' (decimal) or '&#x03BC;' (hex) to CodePoints.
	See http://en.wikipedia.org/wiki/Numeric_character_reference"
	
	convertEmbeddedNCRs ifFalse: [ ^ self asUtf8 ].
	
	^ByteArray streamContents: [ :outStream |
		 | inStream nextChar prevPos maybeUnicodeNCR ncrSize codePoint |
		inStream _ self readStream.
		[ inStream atEnd ] whileFalse: [
			nextChar _ inStream next.
			( nextChar = $& )
			ifFalse: [ nextChar asUtf8toStream: outStream ]
			ifTrue: [
				prevPos _ inStream position.
				maybeUnicodeNCR _ inStream next: 9.
				(maybeUnicodeNCR first = $#)
				ifTrue: [
					ncrSize _ maybeUnicodeNCR indexOf: $;.
					(ncrSize = 0)
					ifTrue: [ "Not an NCR after all. Just add the $& and continue from there"
						nextChar asUtf8toStream: outStream.
						inStream position: prevPos.
					]
					ifFalse: [
						(  (maybeUnicodeNCR second) = $x ) "Hex or Decimal?"
						ifTrue: [ codePoint := ('16r', (maybeUnicodeNCR copyFrom: 3 to: ncrSize) asUppercase) asNumber ]
						ifFalse: [ codePoint := (maybeUnicodeNCR copyFrom: 2 to: ncrSize) asNumber ].
						codePoint asUtf8toStream: outStream.
						inStream position: prevPos + ncrSize ]
					]
				]
			]
	 ] ! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/20/2013 08:25'!
capitalized

	"Answer me with the first letter capitalized"
	self isEmpty ifTrue: [ ^self ].
	((self at: 1) isUppercase)
	ifTrue: [ ^self ]
	ifFalse: [ ^ ((self at: 1) asUppercase asUniString) , (self copyFrom: 2 to: self size) ]
	
! !

!UniString methodsFor: 'converting' stamp: 'KenD 4/5/2013 15:54'!
encodeWithConverter: encoder
	^ ByteArray streamContents: [ :stream |
		self do: [ :each |
			encoder nextPut: each toStream: stream ] ]! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/20/2013 08:31'!
initialIntegerOrNil
	"Answer the integer represented by the leading digits of the receiver, or nil if the receiver does not begin with a digit"
	| firstNonDigit |
	(self size = 0 or: [self first isDigit not]) ifTrue: [^ nil].
	firstNonDigit _ (self findFirst: [:m | m isDigit not]).
	firstNonDigit = 0 ifTrue: [firstNonDigit _ self size + 1].
	^ (self copyFrom: 1  to: (firstNonDigit - 1)) asNumber
"
'234Whoopie' asUniString initialIntegerOrNil
'wimpy' asUniString  initialIntegerOrNil
'234' asUniString  initialIntegerOrNil
'2N'  asUniString  initialIntegerOrNil
'2' asUniString  initialIntegerOrNil
'  89Ten ' asUniString  initialIntegerOrNil
'78 92' asUniString  initialIntegerOrNil
"
! !

!UniString methodsFor: 'converting' stamp: 'KenD 1/22/2019 16:53:09'!
keywords
	"Answer an array of the keywords that compose the receiver."
	| keywords |
	keywords := self asString keywords.
	^ keywords collect: [ :str | str asUniString ]! !

!UniString methodsFor: 'converting' stamp: 'KenD 4/8/2013 21:28'!
reversed
	"Answer a copy of the receiver with element order reversed."
"
	 'frog' asUniString reversed.
	('able was I ere I saw elba' asUniString) reversed.
		=>   'able was I ere I saw elba'
"

	| result |
	result _ UniStringWrapper new.
	self reverseDo: [ :uChar | result nextPut: uChar ].
	
	^ result asUniString
! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/19/2013 18:18'!
species

	"I abstract an array of codePoints"
	^ UniString! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/20/2013 22:53'!
subStrings: collectionOfSeparators
	"Answer an array of the substrings that compose the receiver."
	| result sourceStream subStringStream separators |
	separators := collectionOfSeparators as: UniString.
	sourceStream := self readStream.
	result := OrderedCollection new.
	subStringStream := UniStringWrapper new.
	[ sourceStream atEnd ] whileFalse: [
		| char |
		char := sourceStream next.
		(separators includes: char)
			ifTrue: [
				subStringStream isEmpty ifFalse: [
					result add: subStringStream asUniString.
					subStringStream := UniStringWrapper new ] ]
			ifFalse: [
				subStringStream nextPut: char ] ].
	subStringStream isEmpty ifFalse: [
		result add: subStringStream asUniString ].
	^ result asArray! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/20/2013 22:51'!
substrings
	"Answer an array of the substrings that compose the receiver."
	| result sourceStream subStringStream |

	sourceStream := self readStream.
	result := OrderedCollection new.
	subStringStream := UniStringWrapper new.
	[ sourceStream atEnd ] whileFalse: [
		| char |
		char := sourceStream next.
		(char isSeparator)
			ifTrue: [
				subStringStream isEmpty ifFalse: [
					result add: subStringStream asUniString.
					subStringStream := UniStringWrapper new ] ]
			ifFalse: [
				subStringStream nextPut: char ] ].
	subStringStream isEmpty ifFalse: [
		result add: subStringStream asUniString ].
	^ result asArray! !

!UniString methodsFor: 'converting' stamp: 'KenD 5/7/2014 02:54'!
surroundedBySingleQuotes
	"Answer the receiver with leading and trailing quotes.  "

	| singleQuiteUniString |
	singleQuiteUniString := $' asUniString.
	
	^ (singleQuiteUniString, self, singleQuiteUniString)! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/18/2013 16:42'!
withFirstCharacterDownshifted

	"Answer an object like the receiver but with first character downshifted if necesary"
	(self size isZero) ifTrue: [ ^self ].
	((self at: 1) isLowercase) ifTrue: [ ^self ].
	
	^ ((self at: 1) toLower asUniString) , (self copyFrom: 2 to: self size) ! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/30/2013 16:24'!
withNoLineLongerThan: maxCharsWanted
	"Answer a string with the same content as receiver, 
	but rewrapped so that no line has more characters than maxCharsWanted (an Integer)"
	
	| |
	maxCharsWanted isNumber not | (maxCharsWanted < 1) ifTrue: [self error: 'too narrow'].
"	
	result := UniString emptyString.

	self lineIndicesDo: [ :start :endWODelim :end |
		((endWODelim - start + 1) > maxCharsWanted) ""Size larger than wanted?""
		ifTrue: [result := result , 
					(self wrapFrom: start to: endWODelim wrapLength: maxCharsWanted) 		]
		ifFalse: [result := result , self copyFrom: start to: end] ""include line delimiter(s)""
	].
		
	^ result 
"
	^ self wrapFrom: 1 to: self size wrapLength: maxCharsWanted ! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/30/2013 16:22'!
wrapFrom: start to: end wrapLength: maxLenWanted
	"Answer a UniString with newlines such that no line is longer than maxLenWanted"
	
	| breaksForLine maxEnd breaks result |
	maxEnd := (self size + 1) min: (start + maxLenWanted).
	
	breaksForLine := self possibleLineBreaksBetween: start and: end.
	breaks := breaksForLine select: [ :index | (index > start) and: [index <= maxEnd]].
	
	"Nota Bene: Smalltalk want to break BRFORE spaces and eliminate spaces
	 at start of  line.   Unicode wants to break AFTER spaces."

	(breaks size isZero)
	ifTrue: [ 
		(breaksForLine size isZero)
		ifTrue: [	 ^ self copyFrom: start to: (end min: self size) ]
		ifFalse: [
			^(self copyFrom: start to: (breaksForLine first - 1)) withBlanksTrimmed , 
			  UniString newLineString ,
			  (self wrapFrom: breaksForLine first to: end wrapLength: maxLenWanted)
		]
	]
	ifFalse: [
		"add line start before break"
		result := (self copyFrom: start to: (breaks last - 1))  withBlanksTrimmed.
		((breaks last) >= end)
		ifTrue: [ ^ result ] "done"
		ifFalse: [  "chunk through the rest"
			^ result , 
			   UniString newLineString ,
			   (self wrapFrom: (breaks last) to: end wrapLength: maxLenWanted)  withBlanksTrimmed 
		]
	].
! !

!UniString methodsFor: 'converting' stamp: 'KenD 3/22/2013 16:40'!
wrapped

	^UniStringWrapper with: self! !

!UniString methodsFor: 'case' stamp: 'KenD 3/18/2013 21:41'!
asLowercase

	^ self collect: [ :uchar | uchar asLowercase ]! !

!UniString methodsFor: 'case' stamp: 'KenD 3/18/2013 21:41'!
asUppercase

	^ self collect: [ :uchar | uchar asUppercase ]! !

!UniString methodsFor: 'case' stamp: 'KenD 3/18/2013 21:37'!
caseFold

	^ self collect: [ :uchar | uchar caseFold ]! !

!UniString methodsFor: 'accessing' stamp: 'KenD 3/19/2013 16:29'!
at: anIndex

	self subclassResponsibility ! !

!UniString methodsFor: 'accessing' stamp: 'KenD 3/19/2013 16:30'!
at: anIndex put: aValue

	self subclassResponsibility ! !

!UniString methodsFor: 'accessing' stamp: 'KenD 3/19/2013 16:29'!
codePointAt: anIndex

	self subclassResponsibility ! !

!UniString methodsFor: 'accessing' stamp: 'KenD 4/3/2013 16:00'!
encompassLine: anInterval
	"Return an interval that includes anInterval, and that comprises one or several whole paragraphs in the receiver.
	Answer starts at the position following a newLine (or eventually 1) and ends before a newLine (or eventually at self size)
	See also encompassParagraph:"
	| left rightCr rightNull |
	left _ (self lastIndexOf: Character newLineCharacter startingAt: anInterval first - 1 ifAbsent:[0]) + 1.
	rightCr _ (self indexOf: Character newLineCharacter startingAt: (anInterval last max: anInterval first) ifAbsent: [self size+1])-1.
	rightNull _ (self indexOf: Character null startingAt: (anInterval last max: anInterval first) ifAbsent: [self size+1])-1.
	^left to: (rightCr min: rightNull)! !

!UniString methodsFor: 'accessing' stamp: 'KenD 3/29/2013 17:01'!
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

!UniString methodsFor: 'accessing' stamp: 'KenD 4/19/2013 08:30'!
fontAt: characterIndex
	"Answer the font for characters in the run beginning at characterIndex."
	
	^ UniForms default! !

!UniString methodsFor: 'accessing' stamp: 'KenD 4/18/2013 21:30'!
hash
	| hash numChars |

	hash _ self species hash.
	numChars := self size min: 20.
	(1 to: numChars) do: [ :codePoint | hash _ (hash + codePoint hash) hashMultiply].
	^hash! !

!UniString methodsFor: 'accessing' stamp: 'KenD 3/23/2013 21:38'!
lineCount

	"Answer the number of lines represented by the receiver, where every cr adds one line. "
	| count |
	count _ 0.
	self lineIndicesDo: [ :start :endWithoutDelimiters :end | count _ count + 1 ].
	
	^ count

"
'Fred
the
Bear' asUniString lineCount
"! !

!UniString methodsFor: 'accessing' stamp: 'KenD 3/30/2013 08:18'!
lineIndicesDo: aBlock

	"execute aBlock with 3 arguments for each line:
	- start index of line
	- end index of line without line delimiter(s)
	- end index of line including line delimiter(s) 
	
	Delimiters include lineBreak properties BreaK CR LineFeed NextLine "
	| breakProps startPos curPos isHardBreak |
	breakProps := { UniChar BK. UniChar CR. UniChar LF. UniChar NL. }.
	isHardBreak :=  [ :index | breakProps includes: ((self at: index) lineBreakCategoryCode)].
	
	(self size isZero) ifTrue: [ aBlock value: 1 value: 0 value: 0. ^self ]. "One empty string"

	curPos := startPos := 1.
	[curPos <= self size]
		whileTrue: [ | endPos endBreak |
			(isHardBreak value: curPos) "found break?"
			ifFalse: [ curPos := curPos + 1 ] "No; keep looking"
			ifTrue: [
				"remember last character position before break"
				endPos := curPos - 1. 
				endBreak := curPos.  "Only one break char unless changed"
				
				"Each Break counts as a new line, where CR+LF or LF+CR counts as one"
				(self isCRLFAt: curPos)
				ifTrue: [
					endBreak := endBreak + 1. "A two character break"
				]..
			
				"Do the deed"
				aBlock value: startPos value: endPos value: endBreak..
		
				"Ready for next search"
				startPos := curPos :=  endBreak + 1.
			]
		].
	"End of string may not have a line break.  Don't forget the last line."
	(startPos + 1 <= curPos) ifTrue: [ aBlock value: startPos value: (curPos - 1) value: (curPos - 1)]

	! !

!UniString methodsFor: 'accessing' stamp: 'KenD 3/23/2013 21:36'!
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
Bear' asUniString lineNumber: 3
".! !

!UniString methodsFor: 'accessing' stamp: 'KenD 3/23/2013 21:35'!
lines
	"Answer an array of lines composing this receiver without the line ending delimiters."

	^Array
		streamContents: [ :lines | self linesDo: [ :aLine | lines nextPut: aLine ]]
		estimatedSize: (self size // 60 max: 16)! !

!UniString methodsFor: 'accessing' stamp: 'KenD 3/23/2013 21:37'!
linesDo: aBlock
	"execute aBlock with each line in this string.  The terminating CR's are not included in what is passed to aBlock"
	
	self lineIndicesDo: [ :start :endWithoutDelimiters :end |
		aBlock value: (self copyFrom: start  to: endWithoutDelimiters) ]
		! !

!UniString methodsFor: 'testing' stamp: 'KenD 4/4/2013 20:11'!
beginsWith: prefix
	"Answer whether the receiver begins with the given prefix string.
	The comparison is case-sensitive."

	^self is: prefix substringAt: 1! !

!UniString methodsFor: 'testing' stamp: 'KenD 3/19/2013 16:17'!
endsWithDigit
	"Answer whether the receiver's final character represents a digit.  3/11/96 sw"

	^ self size > 0 and: [(self at: self size) isDigit]! !

!UniString methodsFor: 'testing' stamp: 'KenD 5/5/2014 21:56'!
is: aSymbol
	^ aSymbol == #UniString or: [ super is: aSymbol ]! !

!UniString methodsFor: 'testing' stamp: 'KenD 3/18/2013 16:43'!
isAllDigits
	"whether the receiver is composed entirely of digits and has at least one digit"

	self do: [:c | c isDigit ifFalse: [^ false]].
	self ifEmpty: [^false].
      ^ true! !

!UniString methodsFor: 'testing' stamp: 'KenD 3/18/2013 16:43'!
isAllSeparators
	"whether the receiver is composed entirely of separators"
	self do: [ :c | c isSeparator ifFalse: [ ^false ] ].
	^true! !

!UniString methodsFor: 'testing' stamp: 'KenD 3/28/2013 15:34'!
isCRLFAt: index
	"Answer true if chars at index and index+1 are CR_LF or LF+CR"
	
		(index < self size) 
		ifFalse: [ ^false ] "Only one character"
		ifTrue: [ | thisCh nextCh |
			thisCh := self at: index.
			nextCh := self at: index + 1.
			^ (thisCh isCR and: [nextCh isLF])
				or: [thisCh isLF and: [nextCh isCR]] 
		]! !

!UniString methodsFor: 'testing' stamp: 'KenD 4/5/2013 14:24'!
isString

	^ false "@@@?@@@"! !

!UniString methodsFor: 'testing' stamp: 'KenD 3/18/2013 16:27'!
lastSpacePosition
	"Answer the character position of the final space or other separator character in the receiver, and 0 if none"
	self size to: 1 by: -1 do:
		[:index | ((self at: index) isSeparator) ifTrue: [^ index]].
	^ 0

"
'fred the bear' asUniString lastSpacePosition
'ziggie' asUniString lastSpacePosition
'elvis ' asUniString lastSpacePosition
'wimpy  ' asUniString lastSpacePosition
''  asUniString lastSpacePosition
"! !

!UniString methodsFor: 'testing' stamp: 'KenD 3/18/2013 16:34'!
startsWithDigit
	"Answer whether the receiver's first character represents a digit"

	^ self size > 0 and: [(self at: 1) isDigit]! !

!UniString methodsFor: 'private' stamp: 'KenD 4/17/2013 14:59'!
breakDisplayUniString: indexArray

	"Answer self with line break characters inserted at indices.
	IndexArray is an array of integers which are valid indices into me."
"
	| testStr breakArray |
	testStr := ( '123a b567c 
d90!! foo, Yes bar. then x.
' asUniString).
	breakArray := testStr possibleLineBreaksBetween: 1 and: testStr size.
	(testStr breakDisplayUniString: breakArray) edit.
"	
	| result |
	result := UniStringWrapper new.
	(1 to: self size) do: [ :index |
		(indexArray includes: index) "Display break BEFORE char at index"
			ifTrue: [result nextPut: UniChar defaultBreakDisplayChar ].
		result nextPut: (self at: index)
	].
	(indexArray includes: self size + 1) "Break at end of text"
		ifTrue: [result nextPut: UniChar defaultBreakDisplayChar ].
	
	^ result asUniString! !

!UniString methodsFor: 'private' stamp: 'KenD 8/23/2016 18:49:18'!
bytesPerElement

	self subclassResponsibility ! !

!UniString methodsFor: 'private' stamp: 'KenD 4/18/2013 09:02'!
checkIndex: anIndex

	((anIndex > 0) and: [anIndex <= self size])
		ifFalse: [self errorSubscriptBounds: anIndex]! !

!UniString methodsFor: 'private' stamp: 'KenD 4/21/2013 17:16'!
combinedGraphemePointsBetween: start and: stop inTo: aCollection
	"Answer an OrderedCollection of points (startIndex@endIndex) indicating multiple
	codePoints making up a grapheme cluster (composite character).
	
	If first codePoint is a combining mark, the first point will start with index start-1."

	"Note Unicode Annex #29: Unicode Text Segmentation"
	| curPos endPos |
	curPos := start.
	endPos := stop.
	(endPos < curPos) ifTrue: [ ^ aCollection ]. 

	[curPos <= endPos] whileTrue: [ | curChar inComposition |
		curChar := self at: curPos.
		
		"Handle Hangul Jamo syllables separately"
		(curChar hasTagInLVT) ifTrue: [ "tail call"
			 ^self combinedHangulJamoPointFrom: curPos 
					to: stop 
					inTo: aCollection
		].

		"Regional Indocators are easy but different."
		(curChar isRegionalIndicator) ifTrue: [ "tail call"
			 ^self regionalIndicatorPointFrom: curPos 
					to: stop 
					inTo: aCollection
		].
	
		"A 'user perceiived character' is (typically) a base character 
		 followed by various combining marks"
		inComposition := curChar charIsGraphemePart.

		inComposition ifTrue: [ | startPos |
			((curChar isRegionalIndicator) or: [curChar hasTagInLVT])
				ifTrue: [ startPos := curPos ] "Does NOT modify preceeding codePoint"
				ifFalse: [startPos := curPos - 1]. "Note Bene: could be zero!!"
			[inComposition and: [curPos < endPos]] whileTrue: [
				"Find the end of the grapheme cluster"
				curPos := curPos + 1.
				curChar := self at: curPos.
				inComposition := curChar charIsGraphemePart.
				inComposition ifFalse: [ 
					aCollection addLast: (startPos @ (curPos - 1)).
					(curChar isRegionalIndicator) ifTrue: [ "tail call"
			 			^self regionalIndicatorPointFrom: curPos 
								to: stop 
								inTo: aCollection
					]
				]
			].
			"Check for special case: end is still in composition"
			((curPos = endPos) and: [inComposition])
				ifTrue: [ aCollection addLast: (startPos @ curPos) ].
		].
		curPos := curPos + 1.
	].
	
	^ aCollection
! !

!UniString methodsFor: 'private' stamp: 'KenD 4/21/2013 11:49'!
combinedHangulJamoPointFrom: start to: stop inTo: aCollection
	"Add to an OrderedCollection of points (startIndex@endIndex) 
	adding a point where two or more codePoints make up 
	a composite Hangul Jamo character.
	
	Continue with #combinedGraphemePointsBetween:and:inTo:
	if we don't end at stop.
	"
	| curPos endPos  curChar scanState |
	(start = stop) ifTrue: [ ^aCollection ]. "Can't compose a singleton codePoint"
	curPos := start.
	scanState := 1. "Start; see UniChar>>nextLVTStateFromState:"
	
	curChar := self at: curPos.
	(curChar hasTagInLVT) ifFalse: [ ^DomainError signal: 'Called on non Hangul-Jamo'].
	
	[(curPos <= stop) and: [ scanState isZero not]] whileTrue: [
		curPos := curPos + 1.
		curChar := self at: curPos.
		scanState := curChar nextLVTStateFromState: scanState.
	].
	"OK.  Now curPos is beyond end of me or LVT state"
	endPos := curPos - 1.
	
	"Don't add single character graphemes"
	(endPos > start) ifTrue: [ aCollection addLast: (start @ endPos) ].

	(endPos = stop)
		ifTrue: [ ^ aCollection ] "Done"
		ifFalse: [ "Keep Looking for more clusters"  "tail call"
			^ self combinedGraphemePointsBetween: curPos 
					and: stop 	
					inTo: aCollection
		]
! !

!UniString methodsFor: 'private' stamp: 'KenD 3/21/2013 19:15'!
evaluateExpression: aString parameters: aCollection 
	"private - evaluate the expression aString with  
	aCollection as the parameters and answer the  
	evaluation result as an string"
	| index |
	index := ((UniString fromString: '0') , aString) asNumber.

	index isZero
		ifTrue: [^ '[invalid subscript: {1}]' format: {aString}].

	index > aCollection size
		ifTrue: [^ '[subscript is out of bounds: {1}]' format: {aString}].

	^ (aCollection at: index) asUniString! !

!UniString methodsFor: 'private' stamp: 'KenD 3/21/2013 19:23'!
getEnclosedExpressionFrom: aStream 
	"private - get the expression enclosed between '{' and 
	'}' and remove all the characters from the stream"
	| result currentChar |
	result := UniStringWrapper new..

	[aStream atEnd 
		or: [(currentChar := aStream next) = $}]]
		whileFalse: [result nextPut: currentChar].

	^ result asUniString withBlanksTrimmed! !

!UniString methodsFor: 'private' stamp: 'KenD 2/17/2013 21:23'!
isBalanced
	"Answer if the Rope is balanced"

	| fib |
	fib := UniString fibonacci.
	(self depth >= (fib size - 2))
	ifTrue:  [^false]
	ifFalse: [^ (fib at: (self depth + 2)) <= self size]! !

!UniString methodsFor: 'private' stamp: 'KenD 4/1/2013 19:28'!
meldWith: otherUniString
	"Answer a new UniString from collected Codepoints of self and otherUniString"
	
	| coll |
	coll := OrderedCollection new.
	"Use #codePointsDo: as could be a UniFlatSlice or a UniFlat"
	self codePointsDo: [ :n | coll add: n].
	otherUniString asUniString codePointsDo: [ :n | coll add: n].

	^ UniString fromCodePointCollection: coll asArray! !

!UniString methodsFor: 'private' stamp: 'KenD 12/13/2015 20:52'!
numArgs 
	"Answer either the number of arguments that the receiver would take if considered a selector.  Answer -1 if it couldn't be a selector. It is intended mostly for the assistance of spelling correction."

	| firstChar numColons start ix |
	self size = 0 ifTrue: [^ -1].
	firstChar := self at: 1.
	((firstChar isLetter or: [ firstChar = $:]) or: [firstChar =  $_]) ifTrue:
		["Reject if any chars are non-alphanumeric"
		2 to: self size do: [:i | (self at: i) tokenish ifFalse: [^ -1]].
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
	1 to: self size do: [:i | ((self at: i) isSpecial) ifFalse: [^ -1]].
	^1! !

!UniString methodsFor: 'private' stamp: 'KenD 4/10/2013 20:07'!
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
		(node class == UniSplice)
		ifTrue: [
			toExamine addFirst: node rightRope.
			toExamine addFirst: node leftRope.
		]
		ifFalse: [leafNodes addLast: node]
	].
	^ UniString merge: leafNodes start: 1 end: (leafNodes size).! !

!UniString methodsFor: 'private' stamp: 'KenD 4/21/2013 14:17'!
regionalIndicatorPointFrom: start to: stop inTo: aCollection
	"Add to an OrderedCollection of points (startIndex@endIndex) 
	adding a point where one or more codePoints make up 
	a one or more Regional Indicators followed by Extend or Spacing Marks.
	
	Continue with #combinedGraphemePointsBetween:and:inTo:
	if we don't end at stop.
	"
	| curPos  curChar endPos |
	(start = stop) ifTrue: [
		aCollection addLast: (start @ stop).
		 ^aCollection 
	].
	curPos := start.
	curChar := self at: curPos.
	
	[(curPos < stop) and: [curChar isRegionalIndicator]] whileTrue: [
		"Consume Regional Indicators"
		curPos := curPos + 1.
		curChar := self at: curPos.
	].
	[(curPos < stop) and: [curChar charIsGraphemePart]] whileTrue: [
		"Consume Extenders and Marks"
		curPos := curPos + 1.
		curChar := self at: curPos.
	].
	((curPos = stop) and: [curChar charIsGraphemePart])
		ifTrue: [  endPos := curPos ] 
		ifFalse: [ endPos := curPos - 1 ].
	
	aCollection addLast: (start @ endPos).
	
	(endPos = stop)
		ifTrue: [ ^ aCollection ] "Done"
		ifFalse: [ "Keep Looking for more clusters"  "tail call"
			^ self combinedGraphemePointsBetween: curPos 
					and: stop 	
					inTo: aCollection
		]
! !

!UniString methodsFor: 'enumerating' stamp: 'KenD 3/18/2013 15:56'!
codePointsDo: aBlock
	"aBlock takes each codePoint in me as an argument"
	
	self subclassResponsibility ! !

!UniString methodsFor: 'enumerating' stamp: 'KenD 3/18/2013 21:47'!
collect: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect the resulting values into a collection like the receiver. Answer 
	the new collection."

	| result |
	result _ UniStringWrapper new.
	self do:
		[ :uchar | result nextPut: (aBlock value: uchar) ].
	^ result asUniString ! !

!UniString methodsFor: 'enumerating' stamp: 'KenD 8/23/2016 18:57:01'!
do: aBlock
	"aBlock takes each UniChar in me as an argument"
	
	^nil "zero elements to process" ! !

!UniString methodsFor: 'enumerating' stamp: 'KenD 4/18/2013 17:50'!
select: aBlock 
	"Refer to the comment in Collection>>select:."
	| result |
	result := UniStringWrapper new.
	self do: [ :uchar | 
		(aBlock value: uchar)
			ifTrue: [result nextPut: uchar]].
	^ result asUniString! !

!UniString methodsFor: 'enumerating' stamp: 'KenD 3/18/2013 21:56'!
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
'fred	charlie	elmo		2' asUniString  tabDelimitedFieldsDo: [:aField |  Transcript newLine; show: aField]
"! !

!UniString methodsFor: 'unicode' stamp: 'KenD 4/21/2013 10:01'!
combinedGraphemePointsBetween: start and: stop
	"Answer an array of points (startIndex@endIndex) indicating multiple
	codePoints making up a grapheme cluster (composite character).
	
	If first codePoint is a combining mark, the first point will start with index start-1."

	"Note Unicode Annex #29: Unicode Text Segmentation"
	
	self checkIndex: start.
	self checkIndex: stop.
	
	^ (self combinedGraphemePointsBetween: start and: stop inTo: OrderedCollection new) asArray
! !

!UniString methodsFor: 'unicode' stamp: 'KenD 4/17/2013 15:59'!
possibleLineBreaksBetween: start and: stop
	"Scan self between start and stop.
	Answer an array of #(breakIndex).  Breaks should occur just before these indices.
	Add break after end."

	"Note Unicode Annex #14: Unicode Line Breaking Algorithm"
	"Distinguish from WORD breaks [Unicode Annex #29: Unicode Text Segmentation]"
	
	| curPos endPos leftChar rightChar result |
	
	endPos := stop min: self size.
	
	(endPos < start) ifTrue: [ ^ #( 1 ) ].  "Break after BOText or before EOText"
	
	leftChar := self at: start.
	
	(endPos = start) ifTrue: [ "One character. No two characters to compare"
		(leftChar isLineSeparator) 
		ifTrue: [ ^ #( 1, 2 ) ]
		ifFalse: [ ^ #( 2 ) ]
	].
	
	result := OrderedCollection new.
	
	"(endPos > start) means at least two codePoints"
	curPos := start + 1.
	[curPos <= endPos] whileTrue: [ 
		rightChar := self at: curPos.
		
		(UniChar isLineBreakBetween: leftChar and: rightChar)
			ifTrue: [result add: curPos].

		leftChar := rightChar.
		curPos := curPos + 1.
	].
	"Note that End Of Text is considered to have a line break."
	(result includes: (self size)) ifFalse: [result add: self size + 1].
	
	^ result asArray
	! !

!UniString methodsFor: 'unicode' stamp: 'KenD 4/18/2013 09:10'!
wordPointsBetween: start and: stop
	"Scan self between start and stop.
	Answer an array of points: (startIndex @ stopIndex)."
		
	"Note Unicode Annex #29: Unicode Text Segmentation"
	
	| curPos endPos result |
	self checkIndex: start.
	self checkIndex: stop.
	
	curPos := start.
	endPos := stop min: self size.
	(endPos < curPos) ifTrue: [ ^ #() ]. 
	
	result := OrderedCollection new.

	[curPos <= endPos] whileTrue: [ | curChar inWord |
		curChar := self at: curPos.
		inWord := curChar charCouldStartWord.

		inWord 	"Note: Ideographs are their own words" "@@@???Symbols???@@@"
		ifFalse: [ (curChar isCJKIdeograph) ifTrue: [result addLast: (curPos @ curPos)]] 
		ifTrue: [ | startPos |
			startPos := curPos.
			[inWord and: [curPos < endPos]] whileTrue: [ "Find the end of a 'word'"
				curPos := curPos + 1.
				curChar := self at: curPos.
				inWord := curChar charCouldBeInsideWord.
				inWord 
					ifFalse: [ | prevChar |
						prevChar := self at: (curPos - 1).
						(prevChar charCouldEndWord)
						ifTrue: [result addLast: (startPos @ (curPos - 1)) ]
						ifFalse: [result addLast: (startPos @ (curPos - 2)) ]
					]
			]
		].
		curPos := curPos + 1.
	].
	
	^ result asArray
! !

!UniString methodsFor: 'unicode' stamp: 'KenD 4/17/2013 19:48'!
wordsBetween: start and: stop
	"Scan self between start and stop.
	Answer an array of UniStrings."
		
	"Note Unicode Annex #29: Unicode Text Segmentation"
	
	| curPos endPos result |
	
	curPos := start.
	endPos := stop min: self size.
	(endPos < curPos) ifTrue: [ ^ #() ]. 
	
	result := OrderedCollection new.

	[curPos <= endPos] whileTrue: [ | curChar inWord |
		curChar := self at: curPos.
		inWord := curChar charCouldStartWord.

		inWord 	"Note: Ideographs are their own words" "@@@???Symbols???@@@"
		ifFalse: [ (curChar isCJKIdeograph) ifTrue: [result addLast: curChar asUniString]] 
		ifTrue: [ | protoWord |
			protoWord := UniStringWrapper new.
			protoWord nextPut: curChar.
			[inWord and: [curPos < endPos]] whileTrue: [ "Gather characters for a 'word'"
				curPos := curPos + 1.
				curChar := self at: curPos.
				inWord := curChar charCouldBeInsideWord.
				inWord 
					ifTrue: [protoWord nextPut: curChar]
					ifFalse: [ | protoUStr |
						protoUStr := protoWord asUniString.
						(protoUStr last charCouldEndWord)
						ifTrue: [result addLast: protoUStr ]
						ifFalse: [result addLast: 
							(protoUStr copyFrom: 1 to: (protoWord size - 1) ) 
						]
					]
			]
		].
		curPos := curPos + 1.
	].
	
	^ result asArray
! !

!UniString methodsFor: 'displaying' stamp: 'KenD 3/4/2013 20:29'!
displayAt: aPoint 
	"Display the receiver as a DisplayText at aPoint on the display screen."
"
({ 16r4E7E. 16r0020. 16r5143. 16r4EA8. 16r5229. 16r8C9E  }  as: UniString)  displayAt: 100@100.
"
	self displayOn: Display at: aPoint! !

!UniString methodsFor: 'displaying' stamp: 'KenD 3/2/2013 20:34'!
displayOn: aDisplayMedium
	"Display the receiver on the given DisplayMedium. "

	self displayOn: aDisplayMedium at: 0 @ 0! !

!UniString methodsFor: 'displaying' stamp: 'KenD 3/18/2013 17:11'!
displayProgressAt: aPoint from: minVal to: maxVal during: workBlock
	"Display this string as a caption over a progress bar while workBlock is evaluated.

EXAMPLE (Select next 6 lines and Do It)

['Now here''s some Real Progress' asUniString
	displayProgressAt: Sensor mousePoint
	from: 0 to: 100
	during: [:bar |
	1 to: 100 do: [:x | bar value: x.
			(Delay forMilliseconds: 100) wait]].] fork
	
['Now here''s some Real Progress' asUniString
	displayProgressAt: Sensor mousePoint
	from: 0 to: 10
	during: [:bar |
	1 to: 30 do: [:x | bar value: x \\ 11.
			(Delay forMilliseconds: 100) wait]]] fork

'Now here''s some Real Progress' asUniString
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

!UniString methodsFor: 'debugging' stamp: 'KenD 9/19/2016 09:01:24'!
doesNotUnderstand: aMessage

	"See what is missing from UniStrings"
	Transcript log: 'Unknown UniString message: ' , String newLineString.
	Transcript log: (String streamContents: [:s | aMessage storeOn: s]).
	
	"Try to do what a String would do"
	aMessage sendTo: (self asString asString) "If Text, needs unwrap twice"! !

!UniString methodsFor: 'user interface' stamp: 'KenD 4/8/2013 19:27'!
edit
"
  (UniString fromCodePointCollection:  #( 16r4E7E 16r0020  16r5143 16r4EA8  16r5229 16r8C9E ) )  edit.
"

	self editLabel: 'Unicode Text Editor'! !

!UniString methodsFor: 'user interface' stamp: 'KenD 4/8/2013 19:16'!
editLabel: labelString

	SystemWindow 
		editText: (UniTextModel withText: self)
		label: labelString
		wrap: true
! !

!UniString methodsFor: 'user interface' stamp: 'KenD 9/11/2016 11:41:52'!
editorClass

	^ UniTextEditor! !

!UniString methodsFor: 'user interface' stamp: 'KenD 9/11/2016 11:41:17'!
editorClassFor: textGetter

	^ UniTextEditor! !

!UniString methodsFor: 'printing' stamp: 'KenD 3/18/2013 21:00'!
encodeDoublingQuoteOn: aStream 
	"Print inside string quotes, doubling embedded quotes."

	aStream print: $'.
	self do: [ :char  |
		aStream print: char.
		char == $' ifTrue: [aStream print: char]].
	aStream print: $'! !

!UniString methodsFor: 'printing' stamp: 'KenD 3/18/2013 16:47'!
print
	"Display self on the Transcript"

	Transcript addEntry: self. Transcript newLine ! !

!UniString methodsFor: 'printing' stamp: 'KenD 9/5/2016 09:23:19'!
printOn: aStream 
	"Look good in the inspector"
"
	'little string thing' asUniString inspect.
"
	aStream nextPutAll: 'UniString('.
	self stringRepresentation printOn: aStream.
	aStream nextPut: $)! !

!UniString methodsFor: 'printing' stamp: 'KenD 8/28/2016 15:17:43'!
printString

	^ self stringRepresentation printString! !

!UniString methodsFor: 'printing' stamp: 'KenD 8/28/2016 18:45:47'!
printStringLimitedTo: limit
	"Answer a String whose characters are a description of the receiver.
	If you want to print without a character limit, use fullPrintString."

	^self stringRepresentation printAs: String limitedTo: limit! !

!UniString methodsFor: 'printing' stamp: 'KenD 8/28/2016 18:48:29'!
storeOn: aStream 
	"Print inside string quotes, doubling inbedded quotes."
	
	self stringRepresentation printString storeOn: aStream! !

!UniString methodsFor: 'printing' stamp: 'KenD 3/31/2013 22:48'!
stringRepresentation

	"Do what Cuis does in String>>fromUtf8:hex:trimLastNull: "
	
	^String streamContents: [:strm | 
		self codePointsDo: [ :codePoint | 
			(codePoint < 16rFF) "Single byte?"
			ifTrue: [ strm nextPut: (codePoint asCharacter ) ]
			ifFalse: [
				strm nextPutAll: '&#x'.
				codePoint printOn: strm base: 16 length: 4 padded: true.
				strm nextPut: $; 
			]
		]
	]! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/23/2013 19:47'!
findDelimiters: delimiters startingAt: start 
	"Answer the index of the character within the receiver, starting at start, that matches one of the delimiters. If the receiver does not contain any of the delimiters, answer size + 1."

	| delimiterCol |
	delimiterCol := delimiters asUniString.
	start to: self size do: [:i |
		 (delimiterCol includes: (self at: i)) ifTrue: [^ i]
	].
	^ self size + 1! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/21/2013 18:54'!
findString: subString
	"Answer the index of subString within the receiver, starting at start. If 
	the receiver does not contain subString, answer 0."
	
	^self findString: subString startingAt: 1.! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/21/2013 18:54'!
findString: subString startingAt: start 
	"Answer the index of subString within the receiver, starting at start. If 
	the receiver does not contain subString, answer 0."

	^ self findSubstring: subString startingAt: start caseSensitive: true.! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/21/2013 18:53'!
findString: key startingAt: start caseSensitive: caseSensitive
	"Answer the index in this String at which the substring key first occurs, at or beyond start.  The match can be case-sensitive or not.  If no match is found, zero will be returned."

	"Be backwards compatable"
	^ self findSubstring: key startingAt: start caseSensitive: caseSensitive! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/21/2013 18:50'!
findSubstring: matchStr startingAt: start caseSensitive: isCaseSensitive
	"Answer the index in the string body at which the substring matchStr first occurs, at or beyond start.  
	 If no match is found, zero will be returned."
	
	| index isEqual key |
	matchStr size = 0 ifTrue: [^ 0].

	key := matchStr asUniString.

	(isCaseSensitive) 
		ifTrue: [isEqual := [:a :b| a = b]] 
		ifFalse: [isEqual := [:a :b | a caseInsensitiveEqual: b]].

	start to: self size - key size + 1 do:
		[:startIndex |
		index _ 1.
		[isEqual value: (self at: startIndex+index-1) value: (key at: index)] whileTrue:
			[index = key size ifTrue: [^ startIndex].
			index _ index+1]].
	^ 0
"
('abcdefabcd'  asUniString) findSubstring: 'abc' startingAt: 1 caseSensitive: true.
('ABCdefabcd'  asUniString) findSubstring: 'abc' startingAt: 1 caseSensitive: true.
('ABCdefabcd'  asUniString) findSubstring: 'abc' startingAt: 1 caseSensitive: false.
('ABCdefabcd'  asUniString) findSubstring: 'xyz' startingAt: 1 caseSensitive: false.
"! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/22/2013 21:27'!
findTokens: delimiters
	"Answer the collection of tokens that result from parsing self.  Return strings between the delimiters.  Any character in the Collection delimiters marks a border.  Several delimiters in a row are considered as just one separation.  Also, allow delimiters to be a single character."

	| tokens keyStart keyStop separators |

	tokens _ OrderedCollection new.
	separators _ delimiters asUniString.
	keyStop _ 1.
	[keyStop <= self size] whileTrue:
		[keyStart _ self skipDelimiters: separators startingAt: keyStop.
		keyStop _ self findDelimiters: separators startingAt: keyStart.
		keyStart < keyStop
			ifTrue: [tokens add: (self copyFrom: keyStart to: (keyStop - 1))]].
	^tokens! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/22/2013 21:37'!
findTokens: delimiters includes: subString
	"Divide self into pieces using delimiters.  Return the piece that includes subString anywhere in it.  Is case sensitive (say asLowercase to everything beforehand to make insensitive)."

^ (self findTokens: delimiters) 
	detect: [:str | (str includesSubString: subString)] 
	ifNone: nil! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/22/2013 21:35'!
findTokens: delimiters keep: keepers
	"Answer the collection of tokens that result from parsing self.  The tokens are seperated by delimiters, any of a string of characters.  If a delimiter is also in keepers, make a token for it.  (Very useful for carriage return.  A sole return ends a line, but is also saved as a token so you can see where the line breaks were.)"

	| tokens keyStart keyStop  |
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

!UniString methodsFor: 'searching' stamp: 'KenD 3/21/2013 18:55'!
includesSubString: subString

	^ (self findString: subString startingAt: 1) > 0! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/19/2013 16:32'!
indexOf: aChar

	"Answer first index of aChar in self or zero"
	^ self indexOf: aChar startingAt: 1! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/19/2013 16:32'!
indexOf: aChar startingAt: startIndex

	"Answer first index of aChar in self or zero"
	| testVal |
	testVal := aChar asUniChar codePoint.
	startIndex to: self size do: [ :index | 
		((self codePointAt: index) = testVal) ifTrue: [ ^index ].
	].
	^0! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/19/2013 18:14'!
indexOf: aCharacter startingAt: start  ifAbsent: aBlock

	| ans |
	
	ans _ self  indexOf: aCharacter startingAt: start.
	(ans = 0)
		ifTrue: [ ^ aBlock value ]
		ifFalse: [ ^ ans ]! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/22/2013 17:25'!
indexOfAnyOf: aCharacterSet

	"Answer the index of the first character in the given set.  Answer 0 if none are found"
	^self indexOfAnyOf: aCharacterSet  startingAt: 1 ifAbsent: [ 0 ]! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/22/2013 17:23'!
indexOfAnyOf: aCharacterSet  ifAbsent: aBlock

	"returns the index of the first character in the given set.  Returns the evaluation of aBlock if none are found"
	^self indexOfAnyOf: aCharacterSet  startingAt: 1  ifAbsent: aBlock! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/22/2013 17:26'!
indexOfAnyOf: aCharacterSet  startingAt: start

	"returns the index of the first character in the given set, starting from start.  Returns 0 if none are found"
	^self indexOfAnyOf: aCharacterSet  startingAt: start  ifAbsent: [ 0 ]! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/22/2013 17:24'!
indexOfAnyOf: aCharacterSet  startingAt: start ifAbsent: aBlock
	"returns the index of the first character in the given set, starting from start"

	| wanted |
	wanted := aCharacterSet asUniString.
	
	1 to: self size do: [ :index | 
		(wanted includes: (self at: index))  ifTrue: [ ^index ].
	].

	^aBlock value! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/22/2013 17:27'!
indexOfSubCollection: sub startingAt: start ifAbsent: exceptionBlock

	| index |
	index _ self findSubstring: sub startingAt: start caseSensitive: true..
	index = 0 ifTrue: [^ exceptionBlock value].
	^ index! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/21/2013 16:38'!
match: text
	"Answer whether text matches the pattern in this string.
	Matching ignores upper/lower case differences.
	Where this string contains #, text may contain any character.
	Where this string contains *, text may contain any sequence of characters."

	^ self startingAt: 1 match: text startingAt: 1
"
(UniString fromString: '*'	)		match: 'zort' true
(UniString fromString: '*baz'	)	match: 'mobaz' true
(UniString fromString: '*baz')		match: 'mobazo' false
(UniString fromString: '*baz*'')		match: 'mobazo' true
(UniString fromString: '*baz*'')		match: 'mozo' false
(UniString fromString: 'foo*'')		match: 'foozo' true
(UniString fromString: 'foo*'')		match: 'bozo' false
(UniString fromString: 'foo*baz'')	match: 'foo23baz' true
(UniString fromString: 'foo*baz'')	match: 'foobaz' true
(UniString fromString: 'foo*baz'')	match: 'foo23bazo' false
(UniString fromString: 'foo'')		match: 'Foo' true
(UniString fromString: 'foo*baz*zort'') match: 'foobazort' false
(UniString fromString: 'foo*baz*zort'') match: 'foobazzort' false
(UniString fromString: '*foo#zort'')	match: 'afoo3zortthenfoo3zort' true
(UniString fromString: '*foo*zort'')	match: 'afoodezortorfoo3zort' true
"! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/22/2013 21:31'!
skipDelimiters: delimiters startingAt: start 
	"Answer the index of the character within the receiver, starting at start, that does NOT match one of the delimiters. If the receiver does not contain any of the delimiters, answer size + 1.  Assumes the delimiters to be a non-empty string."

	| delimColl |
	delimColl := delimiters asUniString.
	
	start to: self size do: [:i |
		delimColl detect: [:delim | delim = (self at: i)]
				ifNone: [^ i]].
	^ self size + 1! !

!UniString methodsFor: 'searching' stamp: 'KenD 3/21/2013 18:24'!
startingAt: keyStart match: textPattern startingAt: textStart
	"Answer whether textPattern matches the pattern in this string.
	Matching ignores upper/lower case differences.
	Where this string contains #, text may contain any character.
	Where this string contains *, text may contain any sequence of characters."
	| text anyMatch matchStart matchEnd i matchStr j ii jj |
	text := textPattern asUniString.
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

!UniString methodsFor: 'formatting' stamp: 'KenD 3/21/2013 19:25'!
format: aCollection 
	"format the receiver with aCollection  
	 
	simplest example:  
	'foo {1} bar' format: {Date today}.
	 
	complete example:  
	'\{ \} \\ foo {1} bar {2}' format: {12. 'string'}.  
	"
	| result stream |
	result := UniStringWrapper new.
	stream := self readStream.

	[stream atEnd]
		whileFalse: [| currentChar | 
			currentChar := stream next.
			currentChar = ${
				ifTrue: [| expression | 
					expression := self getEnclosedExpressionFrom: stream.
					result
						nextPutAll: (self evaluateExpression: expression parameters: aCollection)]
				ifFalse: [
					currentChar = $\
						ifTrue: [stream atEnd
								ifFalse: [result nextPut: stream next]]
						ifFalse: [result nextPut: currentChar]]].

	^ result contents asUniString ! !

!UniString methodsFor: 'stream support' stamp: 'KenD 3/18/2013 16:44'!
nextPut: aThing

	^ self , (aThing asUniString)! !

!UniString methodsFor: 'stream support' stamp: 'KenD 3/18/2013 16:45'!
nextPutAll: aCollection

	^ self , (aCollection as: UniString)! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/18/2013 15:46'!
crString
	"Answer a string containing a single carriage return character."

	^ ( Character crCharacter asUniString )! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/18/2013 15:47'!
crlfString
	"Answer a UniString containing a carriage return and a linefeed."

	^ ( String crlfString asUniString )! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/18/2013 15:23'!
emptyString

	^ EmptyString ! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 8/27/2016 15:18:22'!
fromFile: aName
	"Answer a new UniString. aName MUST name an existing file."
	
	| uniFile uniString |
	uniFile := UniFileStream new open: aName forWrite: false.
	uniString := uniFile contentsOfEntireFile.
	uniFile close.
	^ uniString! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/18/2013 15:47'!
fromPacked: aLong
	"Convert from a longinteger to a UniString of length 4."
	
	^ (String fromPacked: aLong) asUniString ! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 9/5/2016 15:12:03'!
fromString: aString
	"Answer a new UniString"

	(aString class == String)
	ifFalse: [ DomainError signal: 'UniString fromString: requires a String argument' ]
	ifTrue: [	 
		^ self fromCodePointCollection: 
				(aString asArray collect: [ :c | c codePoint]) 
	]
! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 4/5/2013 14:48'!
fromUtf8: aByteArray
	"Convert the given bytes from UTF-8 to  the internal encoding: ISO Latin 9 (ISO 8859-15).
	See #asUtf8 "
	"For any unicode chars not in ISO Latin 9 (ISO 8859-15), embed an NCR.
	See http://en.wikipedia.org/wiki/Numeric_character_reference"

	^ (UniString fromUtf8: aByteArray hex: false trimLastNull: false) asUniString ! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 4/5/2013 15:01'!
fromUtf8: aByteArray hex: useHexForNCRs trimLastNull: doTrimLastNullChar
	"Answer the given string converted from UTF-8 to  a UniString"
"		
	See http://en.wikipedia.org/wiki/Numeric_character_reference
	See http://rishida.net/tools/conversion/. Tests prepared there.
"
	| result bytes codePoint |
	result := UniStringWrapper new.
	bytes := aByteArray readStream.
	[ bytes atEnd ] whileFalse: [
		codePoint _ (Character nextUnicodeCodePointFromUtf8: bytes).
		codePoint ifNotNil: [ result nextPut: codePoint asUniChar asUniString ].
	].

	(doTrimLastNullChar and: [ codePoint = 0 ]) 
	ifFalse: [ ^ result asUniString ]
	ifTrue: [ ^ result copyFrom:	1 to: (result size - 1)]! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 2/19/2013 13:24'!
lfString
	"Answer a Rope containing a single Lf character."

	^ (Character lfCharacter asUniString)! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 9/9/2016 14:17:22'!
newFrom: aCollection
	"Answer  <acollection of codePoints or Characters> as: UniString"

"
	 { 16r4E7E. 16r0020. 16r5143. 16r4EA8. 16r5229. 16r8C9E  } as: UniString.
"
	^ UniString fromCodePointCollection: (aCollection asArray collect: [ :elt | elt codePoint])
	! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 2/19/2013 13:25'!
newLineString
	"Answer a string containing a single newLine (i.e. Lf) character."

	^ (Character newLineCharacter asUniString)! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/18/2013 15:49'!
readFrom: inStream
	"Answer an instance of me that is determined by reading the stream, 
	inStream. Embedded double quotes become the quote Character."
	
	^ self fromString: (String readFrom: inStream)! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/18/2013 15:49'!
space
	"Answer a string containing a single tab character."

	^ ( Character space asUniString )! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 2/19/2013 13:26'!
tab
	"Answer a string containing a single tab character."

	^ (Character tab asUniString)! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/18/2013 15:51'!
value: anInteger

	^  (UniChar value: anInteger) asUniString ! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/21/2013 19:45'!
with: aThing

	^ aThing asUniString! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/21/2013 19:45'!
with: aThing with: bThing

	^ (aThing asUniString) , (bThing asUniString)! !

!UniString class methodsFor: 'instance creation' stamp: 'KenD 3/21/2013 19:45'!
with: aThing with: bThing with: cThing

	^ (aThing asUniString) , (bThing asUniString)  , (cThing asUniString)! !

!UniString class methodsFor: 'as yet unclassified' stamp: 'KenD 4/6/2013 19:07'!
defaultFontClass
	^UniForms! !

!UniString class methodsFor: 'as yet unclassified' stamp: 'KenD 3/18/2013 16:04'!
stringHash: aString initialHash: speciesHash

	|  hash low |

	hash _ speciesHash bitAnd: 16rFFFFFFF.
	
	"@@FIXME: assumes ASCII"

	aString asUniString codePointsDo: [ :codePoint  |
		hash _ hash + codePoint.
		"Begin hashMultiply"
		low _ hash bitAnd: 16383.
		hash _ (16r260D * low 
			+ ((16r260D * (hash bitShift: -14) 
			+ (16r0065 * low) bitAnd: 16383) * 16384)) bitAnd: 16r0FFFFFFF.
	].
	^ hash! !

!UniString class methodsFor: 'user interface' stamp: 'KenD 6/13/2016 12:28'!
editFileFromUser
"
	UniString editFileFromUser.
"
	UniTextModel fromUser! !

!UniString class methodsFor: 'user interface' stamp: 'KenD 4/12/2013 16:37'!
openTextEditor

"
	UniString openTextEditor.
"
	SystemWindow 
		editText: (UniTextModel 
			withText: (
			 	('Given enough rope ' asUniString) , 
				(UniString  newLineString) ,
				('you can write a text editor!!' asUniString)
				)) 
		label: 'Unicode Text Editor' 
		wrap: true! !

!UniString class methodsFor: 'user interface support' stamp: 'KenD 9/11/2016 11:40:24'!
editorClass


	^ UniTextEditor! !

!UniString class methodsFor: 'private' stamp: 'KenD 2/17/2013 15:51'!
fibonacci

"
	self fibonacci size.
"
	^Fibonacci ! !

!UniString class methodsFor: 'private' stamp: 'KenD 4/3/2013 08:45'!
fromCodePointCollection: anIntegerCollection
	"Answer a UniString"
	
	"Determine size to allocate"
	| length allocLength num8 num16 num32 charBlock |
	num8  := 0.
	num16 := 0.
	num32 := 0.
	length := anIntegerCollection size.
	allocLength := (length odd) ifTrue: [ length + 1] ifFalse: [length].
	
	anIntegerCollection do: [ :codePoint | 
		(codePoint < 16rFF)
		ifTrue: [num8 := num8 + 1]
		ifFalse: [ (codePoint < 16rFFFF)
			ifTrue: [num16 := num16 + 1]
			ifFalse: [num32 := num32 + 1]
		]
	].
	"@@FIXME: is a small number of larger codepoints use UniSplice'd ropes"
	(num32 > 0)
	ifTrue: [charBlock := WordArray new: allocLength]
	ifFalse: [(num16 > 0)
			ifTrue: [charBlock := ShortWordArray  new: allocLength]
			ifFalse: [charBlock := ByteArray new: length]
	].
	"Pack 'em tight"
	1 to: length do:	[ :index | charBlock at: index put: (anIntegerCollection at: index) ].
	
	^ (UniFlat new initialize with: charBlock size: length) 
! !

!UniString class methodsFor: 'private' stamp: 'KenD 2/17/2013 15:51'!
maxRopeDepth
	"Rebalance a Rope when its depth exceeds this."
"
	self fibonacci size.
"
	^MaxRopeDepth ! !

!UniString class methodsFor: 'private' stamp: 'KenD 4/10/2013 20:15'!
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

!UniString class methodsFor: 'searching' stamp: 'KenD 3/18/2013 15:58'!
indexOfCodePoint: anInteger inString: aString startingAt: start

	| uniString stringSize |

	stringSize _ aString size.
	uniString := aString asUniString .
	
	start to: stringSize do: [:pos |
		((uniString at: pos) codePoint = anInteger) ifTrue: [^ pos]].

	^ 0
! !

!UniString class methodsFor: 'class initialization' stamp: 'KenD 4/21/2013 10:39'!
initialize
"
	UniString initialize.
"
	EmptyString := UniString fromString: ''.

	Fibonacci :=   #( 0  1  1  2  3  5  8  13  21  34  55  89  144  233  377  610  987  1597  2584  4181  6765  10946  17711  28657  46368  75025  121393  196418  317811  514229  832040  1346269  2178309  3524578  5702887  9227465  14930352  24157817  39088169  63245986  102334155  165580141  267914296  433494437  701408733  1134903170  1836311903  2971215073  4807526976  7778742049  12586269025  20365011074  32951280099  53316291173  86267571272  139583862445  225851433717  365435296162  591286729879  956722026041  1548008755920  2504730781961  4052739537881  6557470319842  10610209857723  17167680177565  27777890035288  44945570212853  72723460248141  117669030460994  190392490709135  308061521170129  498454011879264  806515533049393  1304969544928657  2111485077978050  3416454622906707  5527939700884757  8944394323791464  14472334024676221  23416728348467685  37889062373143906  61305790721611591  99194853094755497  160500643816367088  259695496911122585  420196140727489673  679891637638612258  1100087778366101931  1779979416004714189  2880067194370816120  4660046610375530309  7540113804746346429 ).
	
	MaxRopeDepth := 96.  "rebalance ropes whose depth exceeds this"
	

	.! !

!UniFlat methodsFor: 'accessing' stamp: 'KenD 2/17/2013 16:11'!
at: anIndex
	
	^(self codePointAt: anIndex) asUniChar! !

!UniFlat methodsFor: 'accessing' stamp: 'KenD 2/17/2013 20:58'!
at: index put: aCharacter 

	"Answer a new UniString"
	(self size = 1)
	ifTrue: [
		(index = 1)
		ifTrue: [^ aCharacter asUniString]
		ifFalse: [self errorSubscriptBounds: index]
	].
	
	(index = 1)
	ifTrue: [ ^ (aCharacter asUniString , (self copyFrom: 2 to: self size))].
	
	(index = self size)
	ifTrue: [ ^ (self copyFrom: 1 to: (self size - 1)) , aCharacter asUniString ].
	
	^ (self copyFrom: 1 to: (index - 1)) ,
	   aCharacter asUniString ,
	   (self copyFrom: (index + 1) to: (self size))! !

!UniFlat methodsFor: 'accessing' stamp: 'KenD 2/17/2013 16:10'!
codePointAt: anIndex
	
	^self charBlock at: anIndex! !

!UniFlat methodsFor: 'accessing' stamp: 'KenD 4/1/2013 19:42'!
size
	
	^ length ! !

!UniFlat methodsFor: 'private' stamp: 'KenD 3/18/2013 21:50'!
balanceAsRequired

	^self "No action required"! !

!UniFlat methodsFor: 'private' stamp: 'KenD 8/23/2016 18:50:13'!
bytesPerElement

	^ charBlock bytesPerElement! !

!UniFlat methodsFor: 'private' stamp: 'KenD 2/17/2013 16:09'!
charBlock

	^charBlock! !

!UniFlat methodsFor: 'private' stamp: 'KenD 2/17/2013 16:11'!
depth
	"I am a leaf"
	
	^0! !

!UniFlat methodsFor: 'enumerating' stamp: 'KenD 4/1/2013 19:31'!
codePointsDo: aBlock
	"aBlock takes each codePoint in me as an argument"

	(1 to: length) do: [ :index | aBlock value: (charBlock at: index)].! !

!UniFlat methodsFor: 'enumerating' stamp: 'KenD 4/1/2013 19:32'!
do: aBlock
	"aBlock takes each Unicode character in me as an argument"

	self codePointsDo: [ :codePoint | aBlock value: (codePoint asUniChar) ]! !

!UniFlat methodsFor: 'copying' stamp: 'KenD 2/17/2013 20:11'!
copyFrom: start to: stop 
	"Answer a UniString."

	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ UniFlat fromString: ''].

	((start = 1) and: (stop = self size))
	ifTrue: [^self].
	
	((1 <= start) and: [stop <= self size])
	ifTrue: [
		^(UniFlatSlice new initialize;
			charBlock: (self charBlock) startIndex: start length: (stop - start + 1))
	]
	ifFalse: [
		(stop > self size) 
		ifTrue: [self errorSubscriptBounds: stop]
		ifFalse: [self errorSubscriptBounds: start]
	]! !

!UniFlat methodsFor: 'copying' stamp: 'KenD 2/17/2013 20:13'!
substringFrom: startIndex length: numChars

	((0 <= startIndex) and: [startIndex + numChars <= self size])
	ifTrue: [
		^(UniFlatSlice new initialize;  charBlock: (self charBlock) startIndex: startIndex length: numChars)
	]
	ifFalse: [self errorSubscriptBounds: startIndex]! !

!UniFlat methodsFor: 'initialize-release' stamp: 'KenD 4/1/2013 19:38'!
initialize

	super initialize.
	length := 0. "default"! !

!UniFlat methodsFor: 'initialize-release' stamp: 'KenD 4/1/2013 19:22'!
with: aCharBlock

	| blockClass |
	blockClass := aCharBlock class.
	"Nota Bene:  (ShortWordArray new: 7) size. ==> 8
	Use #UniFlat:with:size:"
	length := aCharBlock size. 

	(blockClass == String) ifTrue: [ 
		charBlock := aCharBlock asByteArray. 
		^self 
	].
	
	((blockClass == ByteArray) or: [(blockClass == ShortWordArray) or: [ blockClass == WordArray]])
	ifTrue: [	 charBlock := aCharBlock. ^self]  "Nota Bene: assumed immutable"

	ifFalse: [ DomainError signal: 'UniString storage must be a ByteArray, ShortIntegerArray, or WordArray']! !

!UniFlat methodsFor: 'initialize-release' stamp: 'KenD 4/15/2013 21:14'!
with: aCharBlock size: size

	| blockClass |
	blockClass := aCharBlock class.
	length := size.
	
	(blockClass == String) ifTrue: [ 
		charBlock := aCharBlock asByteArray. 
		^self 
	].
	
	((blockClass == ByteArray) or: [(blockClass == ShortWordArray) or: [ blockClass == WordArray]])
	ifTrue: [ charBlock := aCharBlock. ^self]  "Nota Bene: assumed immutable"

	ifFalse: [ DomainError signal: 'UniString storage must be a ByteArray, ShortIntegerArray, or WordArray']! !

!UniFlat class methodsFor: 'user interface' stamp: 'KenD 4/8/2013 21:14'!
fromString: aString
	"Answer a new UniString.
	As the string must be immutable, we will keep a copy."
	
	^ (self basicNew initialize with: (aString asString copy) size: aString size; yourself)! !

!UniFlatSlice methodsFor: 'accessing' stamp: 'KenD 2/17/2013 21:52'!
at: anIndex

	^(self codePointAt: anIndex) asUniChar "Nota Bene: #codePointAt: does the index offset"! !

!UniFlatSlice methodsFor: 'accessing' stamp: 'KenD 2/19/2013 15:43'!
at: index put: aCharacter 

	"Answer a new rope"
	| offsetIndex firstIndex endIndex |
	
	firstIndex := self startIndex.
	endIndex := firstIndex + self size - 1.
	offsetIndex := index +  firstIndex - 1.
	
	(self size = 1)
	ifTrue:  [
		(offsetIndex = 1)
		ifTrue: [^ aCharacter asUniString ]
		ifFalse: [self errorSubscriptBounds: index]
	].
	
	(index = 1)
	ifTrue: [ ^ aCharacter asUniString , (self copyFrom: 2 to: self size)].
	
	(offsetIndex = endIndex)
	ifTrue: [ ^ (self copyFrom: 1 to: (index - 1)) , aCharacter asUniString ].
	
	^ (self copyFrom: 1 to: (index - 1)) ,
	   aCharacter asUniString ,
	   (self copyFrom: (index + 1) to: self size )! !

!UniFlatSlice methodsFor: 'accessing' stamp: 'KenD 2/17/2013 16:32'!
codePointAt: anIndex

	^self charBlock at: (anIndex + startIndex - 1)! !

!UniFlatSlice methodsFor: 'accessing' stamp: 'KenD 2/17/2013 16:37'!
size

	^length! !

!UniFlatSlice methodsFor: 'private' stamp: 'KenD 3/18/2013 21:51'!
balanceAsRequired

	^self "No action required"! !

!UniFlatSlice methodsFor: 'private' stamp: 'KenD 2/17/2013 16:32'!
charBlock

	^charBlock ! !

!UniFlatSlice methodsFor: 'private' stamp: 'KenD 2/17/2013 16:36'!
depth
	"I am a leaf"

	^0! !

!UniFlatSlice methodsFor: 'private' stamp: 'KenD 2/17/2013 16:37'!
startIndex

	^startIndex! !

!UniFlatSlice methodsFor: 'private' stamp: 'KenD 3/18/2013 15:36'!
string

	"Answer my slice [a UniFlat]"
	^ (charBlock from: startIndex to: (startIndex + length - 1)) as: UniString! !

!UniFlatSlice methodsFor: 'initialize-release' stamp: 'KenD 2/17/2013 16:36'!
charBlock: aCharBlock startIndex: anIndex length: numberOfChars
	
	startIndex := anIndex.
	length := numberOfChars.
	charBlock := aCharBlock.
	
	"Idiot checks"
	(aCharBlock size < (numberOfChars - anIndex + 1))
	ifTrue: [self error: 'Length exceeds max' , (numberOfChars - anIndex + 1) printString ].
	
	(numberOfChars < 0)
	ifTrue: [self error: 'Can''t have negative length' , numberOfChars].
	
	((anIndex < 1) or: (anIndex > aCharBlock size))
	ifTrue: [self errorSubscriptBounds: anIndex].
	
	^self! !

!UniFlatSlice methodsFor: 'initialize-release' stamp: 'KenD 4/1/2013 20:06'!
initialize

	super initialize.
	"set defaults"
	length := 0.
	startIndex := 1.! !

!UniFlatSlice methodsFor: 'enumerating' stamp: 'KenD 4/1/2013 19:34'!
codePointsDo: aBlock
	"aBlock takes each codePoint in me as an argument"

	startIndex to: (startIndex + length - 1) do: [ :index |  aBlock value: (charBlock at: index) ]! !

!UniFlatSlice methodsFor: 'enumerating' stamp: 'KenD 2/17/2013 20:07'!
do: aBlock
	"aBlock takes each Unicode character in me as an argument"

	self codePointsDo: [ :codePoint |  aBlock value: (codePoint asUniChar) ]! !

!UniFlatSlice methodsFor: 'copying' stamp: 'KenD 2/17/2013 22:07'!
copyFrom: start to: stop 
	"Answer a UniFlatSlice which shares my string"
	
	| offsetStart offsetStop |
	offsetStart := start - 1 + self startIndex.
	offsetStop := stop  - 1 + self startIndex.
	
	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ UniFlatSlice fromString: ''].

	((1 <= start) and: [stop <= (self charBlock size)])
	ifTrue: [
		^(UniFlatSlice new initialize 
			charBlock: (self charBlock) 
			startIndex: offsetStart
			length: (stop - start + 1))
	]
	ifFalse: [
		(offsetStop > self charBlock size) 
		ifTrue: [self errorSubscriptBounds: stop]
		ifFalse: [self errorSubscriptBounds: start]
	]! !

!UniLazyString methodsFor: 'accessing' stamp: 'KenD 4/18/2013 20:20'!
at: anIndex
	"Read as much as is required to satisfy the request.  Answer a UniChar"
	
	self extendForIndex: anIndex.
	^ (soFar codePointAt: anIndex) asUniChar! !

!UniLazyString methodsFor: 'accessing' stamp: 'KenD 4/18/2013 20:20'!
at: anIndex put: aUniChar
	"Read as much as is required to satisfy the request.  Answer a UniString"
	
	self extendForIndex: anIndex.
	^ (soFar at: anIndex put: aUniChar asUniChar)! !

!UniLazyString methodsFor: 'accessing' stamp: 'KenD 4/18/2013 20:20'!
codePointAt: anIndex

	self extendForIndex: anIndex.
	^ (soFar codePointAt: anIndex)! !

!UniLazyString methodsFor: 'accessing' stamp: 'KenD 4/18/2013 17:16'!
depth
	"I cannot be rebalanced"
	^ 0! !

!UniLazyString methodsFor: 'accessing' stamp: 'KenD 4/18/2013 20:21'!
size
	"Answer the niumber of codePoints in me"

	| oldPos count |
	(totalCount isNil) ifFalse: [ ^totalCount ].
	(uniFileStream closed) ifTrue: [ ^totalCount := soFar size ].
	
	oldPos := uniFileStream position.
	count := 0.
	[uniFileStream atEnd] whileFalse: [
		"Read the count of codePoints (NOT Bytes!!)"
		uniFileStream nextCodePoint. "But don't save"
		count := count + 1.
	].
	uniFileStream position: oldPos.
	totalCount := (soFar size) + count.
	
	^ totalCount
! !

!UniLazyString methodsFor: 'enumerating' stamp: 'KenD 4/18/2013 18:51'!
codePointsDo: aBlock
	"aBlock takes each codePoint in me as an argument"

	self readEntireContents.
	^ soFar codePointsDo: aBlock! !

!UniLazyString methodsFor: 'enumerating' stamp: 'KenD 4/18/2013 18:50'!
collect: aBlock
	"Evaluate aBlock with each of the receiver's elements as the argument. 
	Collect the resulting values into a collection like the receiver. Answer 
	the new collection."

	self readEntireContents.
	^ soFar collect: aBlock! !

!UniLazyString methodsFor: 'enumerating' stamp: 'KenD 4/18/2013 18:50'!
do: aBlock
	"aBlock takes each UniChar in me as an argument"

	self readEntireContents.
	^ soFar do: aBlock! !

!UniLazyString methodsFor: 'enumerating' stamp: 'KenD 4/18/2013 18:50'!
select: aBlock
	"Refer to the comment in Collection>>select:."

	self readEntireContents.
	^ soFar select: aBlock! !

!UniLazyString methodsFor: 'copying' stamp: 'KenD 4/18/2013 21:53'!
copyFrom: start to: stop 
	"Answer a UniString."
	
	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ UniString emptyString ].

	self extendForIndex: stop.
	
	^ soFar copyFrom: start to: stop! !

!UniLazyString methodsFor: 'private' stamp: 'KenD 4/18/2013 21:33'!
extendForIndex: anIndex
	"If (anIndex > soFar size),  Extend soFar to include anIndex"
"
Transcript log: 'UniLazyString>>extendForIndex: ',
				(anIndex  asString), '  ', (soFar size) asString ,
  				String newLineString.
"			
	(anIndex > (soFar size)) ifTrue: [ | delta |
		delta := anIndex - (soFar size).
		(delta < ChunkSize)
			ifTrue: [ soFar := soFar , (uniFileStream nextUpTo: ChunkSize) ]
			ifFalse: [ soFar := soFar , (uniFileStream nextUpTo: (delta + 100)) ].
		self fileCheck.
	]! !

!UniLazyString methodsFor: 'private' stamp: 'KenD 4/18/2013 21:33'!
fileCheck
	"Close and remove tempFile if all characters consumed"
"
Transcript log: 'UniLazyString>>fileCheck  closed? >> ',
				(uniFileStream closed asString),
  				String newLineString.
"			
	((uniFileStream closed not) and: [uniFileStream atEnd])
		 ifTrue: [ self fileCleanup ]! !

!UniLazyString methodsFor: 'private' stamp: 'KenD 11/2/2015 07:59'!
fileCleanup
	"Close and remove tempFile"

	 | theFileName fileEntry |
	theFileName := uniFileStream name.
	uniFileStream close.
	fileEntry := theFileName asFileEntry.
	(fileEntry exists)
		ifTrue: [ fileEntry delete ]! !

!UniLazyString methodsFor: 'private' stamp: 'KenD 4/18/2013 18:03'!
finalize

	super finalize.
	self fileCleanup.
	! !

!UniLazyString methodsFor: 'private' stamp: 'KenD 9/21/2016 13:19:41'!
genTempFileName
	"Answer the name of a file which is different than one that exists"
	
	"@@FIXME: Use /tmp on Unix, ??? on Windows"
	
	| looking rand someFileName |
	
	looking := true.
	[looking] whileTrue: [
		 rand := 777 atRandom: (Random new initialize).
 		 someFileName := 'tmp' , rand asString.
 		 looking := (someFileName asFileEntry) exists.
	].
	^ someFileName
! !

!UniLazyString methodsFor: 'private' stamp: 'KenD 4/18/2013 21:33'!
readEntireContents
	"Enumerators process the entire range of characters"
"
Transcript log: 'UniLazyString>>readEntireContents closed? >> ',
				(uniFileStream closed asString),
  				String newLineString.
"
	(uniFileStream closed) ifFalse: [ 
		soFar := soFar , (uniFileStream upToEnd).
		self fileCleanup.
	].
	(totalCount isNil) ifFalse: [ totalCount := soFar size ]! !

!UniLazyString methodsFor: 'private' stamp: 'KenD 4/18/2013 21:34'!
soFar
	"Debug only"
	^soFar! !

!UniLazyString methodsFor: 'initialize-release' stamp: 'KenD 8/27/2016 19:21:47'!
initializeFromFile: aName
	
	| fileEntry tmpFileName |
	super initialize.
	"As UniStrings are immutable, copy the file"
	fileEntry := aName asFileEntry.
	tmpFileName := fileEntry parent pathName, '/', self genTempFileName.
	fileEntry copyTo: tmpFileName.
	
	"Open a UniFileStream on the copy"
	fileName := tmpFileName.
	totalCount := nil.
	uniFileStream := UniFileStream new open: tmpFileName forWrite: false.
	soFar := (uniFileStream next: ChunkSize) asUniString.
	
	^self
	! !

!UniLazyString methodsFor: 'printing' stamp: 'KenD 4/18/2013 21:35'!
printOn: aStream 
	"Look good in the inspector"
"
	'little string thing' asUniString inspect.
"
	aStream nextPutAll: 'UniLazyString(''' , fileName , ''')'
	! !

!UniLazyString class methodsFor: 'class initialization' stamp: 'KenD 4/18/2013 19:10'!
initialize
"
	UniLazyString initialize.
"
	ChunkSize := 1024.
	! !

!UniLazyString class methodsFor: 'instance creation' stamp: 'KenD 11/1/2015 19:02'!
onFileNamed: aName
	"Answer a new instance of me"
"
ls := (UniLazyString onFileNamed: 'Pasted.utf8').
ls := (UniLazyString onFileNamed: 'test-utf8.txt').
"
	 | dirEntry |
	dirEntry := aName asFileEntry.
	(dirEntry exists)
		ifFalse: [ ^ self error: 'Failed to find file ' , aName ].

	(dirEntry isDirectory) 
		ifTrue: [ ^self error: 'Not a text file: ' , aName ].
		
	((dirEntry fileSize) < ChunkSize)
	ifTrue: [ ^ UniString fromFile: aName ] "Too small to bother with"
	ifFalse: [ ^ self new initializeFromFile: aName ]

	! !

!UniRepeatedCharString methodsFor: 'accessing' stamp: 'KenD 4/8/2013 20:10'!
at: anIndex

	self checkIndex: anIndex.
	
	^char! !

!UniRepeatedCharString methodsFor: 'accessing' stamp: 'KenD 4/8/2013 20:14'!
at: index put: aCharacter 
	"Answer a new UniString"
	
	self checkIndex: index.
	(self size = 1)
	ifTrue: [ ^ aCharacter asUniString].
	
	(index = 1)
	ifTrue: [ ^ (aCharacter asUniString , (self copyFrom: 2 to: self size))].
	
	(index = self size)
	ifTrue: [ ^ (self copyFrom: 1 to: (self size - 1)) , aCharacter asUniString ].
	
	^ (self copyFrom: 1 to: (index - 1)) ,
	   aCharacter asUniString ,
	   (self copyFrom: (index + 1) to: (self size))! !

!UniRepeatedCharString methodsFor: 'accessing' stamp: 'KenD 4/8/2013 20:10'!
codePointAt: anIndex

	self checkIndex: anIndex.

	^ (char codePoint)! !

!UniRepeatedCharString methodsFor: 'accessing' stamp: 'KenD 4/8/2013 20:07'!
size
	
	^count! !

!UniRepeatedCharString methodsFor: 'private' stamp: 'KenD 4/8/2013 20:09'!
checkIndex: anIndex

	(anIndex < 1 or: [anIndex > count])
	ifTrue: [ self error: 'Index out of range ' , (anIndex asString)]! !

!UniRepeatedCharString methodsFor: 'private' stamp: 'KenD 4/8/2013 20:22'!
depth
	"I am a leaf"
	
	^0! !

!UniRepeatedCharString methodsFor: 'enumerating' stamp: 'KenD 4/8/2013 20:20'!
codePointsDo: aBlock
	"aBlock takes each codePoint in me as an argument"

	| code |
	code := char codePoint.
	(1 to: count) do: [ :ignore | aBlock value: code].! !

!UniRepeatedCharString methodsFor: 'enumerating' stamp: 'KenD 4/8/2013 20:20'!
do: aBlock
	"aBlock takes each codePoint in me as an argument"

	(1 to: count) do: [ :ignore | aBlock value: char].! !

!UniRepeatedCharString methodsFor: 'copying' stamp: 'KenD 4/8/2013 20:57'!
copyFrom: start to: stop 
	"Answer a UniString."

	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ UniString emptyString ].
	
	self checkIndex: start.
	self checkIndex: stop.

	^ UniRepeatedCharString withChar: char repeatCount: (stop - start + 1)! !

!UniRepeatedCharString methodsFor: 'copying' stamp: 'KenD 4/8/2013 20:57'!
substringFrom: startIndex length: numChars
	"Answer a UniString."
	
	self checkIndex: startIndex.
	self checkIndex: (startIndex + numChars - 1).

	^ UniRepeatedCharString withChar: char repeatCount: numChars! !

!UniRepeatedCharString methodsFor: 'initialize-release' stamp: 'KenD 4/8/2013 20:42'!
initialize

	super initialize.
	char := UniChar space.
	count := 0. "Empty"! !

!UniRepeatedCharString methodsFor: 'initialize-release' stamp: 'KenD 4/8/2013 21:00'!
withChar: aChar repeatCount: repeatCount

	char := aChar asUniChar.
	count := repeatCount.! !

!UniRepeatedCharString methodsFor: 'testing' stamp: 'KenD 4/8/2013 19:59'!
isEmpty

	^ (count = 0)! !

!UniRepeatedCharString class methodsFor: 'instance creation' stamp: 'KenD 4/8/2013 20:57'!
new:  repeatCount

	^ (self basicNew withChar: UniChar space repeatCount: repeatCount)! !

!UniRepeatedCharString class methodsFor: 'instance creation' stamp: 'KenD 4/8/2013 20:57'!
ofSize: repeatCount

	^ (self withChar: UniChar space repeatCount: repeatCount)! !

!UniRepeatedCharString class methodsFor: 'instance creation' stamp: 'KenD 4/8/2013 20:59'!
withChar: aChar repeatCount: repeatCount

	^ (self basicNew withChar: aChar repeatCount: repeatCount) ! !

!UniSplice methodsFor: 'accessing' stamp: 'KenD 2/17/2013 20:35'!
at: anIndex

	| leftLength |
	leftLength := self leftRope size.
	(anIndex <= leftLength)
	ifTrue:  [^leftRope  at: anIndex]
	ifFalse: [^rightRope at: (anIndex - leftLength)]! !

!UniSplice methodsFor: 'accessing' stamp: 'KenD 2/17/2013 21:05'!
at: index put: aCharacter 

	"Answer a new UniString"
	| leftLength |
	leftLength := self leftRope size.
	(index <= leftLength)
	ifTrue: [ ^ (self leftRope at: index put: (aCharacter asUniChar)) , self rightRope]
	ifFalse: [ ^ self leftRope ,
		          (self rightRope at: (index - leftLength) put: (aCharacter asUniChar))]! !

!UniSplice methodsFor: 'accessing' stamp: 'KenD 3/19/2013 16:29'!
codePointAt: anIndex

	| leftLength |
	leftLength := self leftRope size.
	(anIndex <= leftLength)
	ifTrue:  [^leftRope  codePointAt: anIndex]
	ifFalse: [^rightRope codePointAt: (anIndex - leftLength)]! !

!UniSplice methodsFor: 'accessing' stamp: 'KenD 2/17/2013 20:36'!
size

	^totalLength! !

!UniSplice methodsFor: 'private' stamp: 'KenD 2/17/2013 21:26'!
balanceAsRequired
	"Rebalance as required"

	(self depth > (UniString maxRopeDepth))
	ifTrue:  [ ^ self rebalance ]
	ifFalse: [ ^ self ]! !

!UniSplice methodsFor: 'private' stamp: 'KenD 2/17/2013 20:19'!
depth
	
	^depth! !

!UniSplice methodsFor: 'private' stamp: 'KenD 2/17/2013 20:19'!
leftRope
	
	^leftRope! !

!UniSplice methodsFor: 'private' stamp: 'KenD 2/17/2013 20:19'!
rightRope
	
	^rightRope! !

!UniSplice methodsFor: 'enumerating' stamp: 'KenD 2/17/2013 21:40'!
codePointsDo: aBlock
	"aBlock takes each codePoint in me as an argument"

	"recurse into the leaves, give them aBlock, and let them do the work"
	self leftRope  codePointsDo: aBlock.
	self rightRope codePointsDo: aBlock.! !

!UniSplice methodsFor: 'enumerating' stamp: 'KenD 2/17/2013 21:43'!
do: aBlock
	"aBlock takes each UniChar in me as an argument"

	"recurse into the leaves, give them aBlock, and let them do the work"
	self leftRope  do: aBlock.
	self rightRope do: aBlock.! !

!UniSplice methodsFor: 'copying' stamp: 'KenD 4/17/2013 08:37'!
copyFrom: start to: stop 
	"Answer a UniString."
	
	| leftMaxIndex left right |
	"Handle odd case the same way as OrderedCollection"
	(stop < start) ifTrue: [^ UniString emptyString ].

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
	^UniSplice splice: left with: right

! !

!UniSplice methodsFor: 'initialize-release' stamp: 'KenD 3/31/2013 23:18'!
withLeft: aRope andRight: anotherRope

	leftRope := aRope asUniString .
	rightRope := anotherRope asUniString.
	totalLength := aRope size + anotherRope size.
	
	"Common special cases to optimize"
	
	"Meld two short flat ropes"
	(UniSplice shouldMeld: leftRope with: rightRope)
	ifTrue: [ ^ (aRope meldWith: anotherRope) ].
	
	"If left rope has short right child and right rope is short, meld them"
	((leftRope class == UniSplice )
		and: [ UniSplice shouldMeld: (leftRope rightRope) with: rightRope ])
	ifTrue: [
		^((UniSplice 
			splice: (leftRope leftRope) "LeftRope's left child"
			with: ( (leftRope rightRope) meldWith: rightRope  )
		    ) balanceAsRequired)
	].

	"The General Case"
	
	"depth is not defined for Strings; be sure to use Ropes"
	depth := 1 + (leftRope depth max: (rightRope depth)).
	^(self balanceAsRequired)! !

!UniSplice class methodsFor: 'class initialization' stamp: 'KenD 4/10/2013 20:16'!
initialize
	"UniSplice class initialization"
"
	UniSplice initialize.
"
	MeldThreshold := 17.! !

!UniSplice class methodsFor: 'private' stamp: 'KenD 2/17/2013 16:43'!
meldThreshold
	"Meld short Unicode character sequences if same representation size and (combined lenth < meldThreshold) get melded (joined) together"

	^MeldThreshold ! !

!UniSplice class methodsFor: 'private' stamp: 'KenD 4/17/2013 08:29'!
shouldMeld: leftRope with: rightRope

	^( (leftRope isKindOf: UniFlat) 
	     and: [rightRope isKindOf: UniFlat]
	       and: [(leftRope size + rightRope size) < self meldThreshold]
	         and: [ (leftRope bytesPerElement) = (rightRope bytesPerElement) ] )! !

!UniSplice class methodsFor: 'instance creation' stamp: 'KenD 2/17/2013 20:29'!
splice: aUniString with: anotherUniString

	"Answer a new UniString"

	"Don't bother to concat zero length strings"
	(aUniString size = 0)
		ifTrue: [^anotherUniString asUniString ].
		
	(anotherUniString size = 0)
		ifTrue: [^aUniString asUniString].

	"Non-trivial. Answer a new instance"	
	^(self new initialize withLeft: aUniString andRight: anotherUniString) "NB: may return a FlatRope"! !

!UniSplice class methodsFor: 'instance creation' stamp: 'KenD 3/18/2013 15:41'!
with:  aUniString with: anotherUniString

	"Answer a new UniString"

	^ self splice: aUniString with: anotherUniString ! !

!UniFileStream methodsFor: 'properties-setting' stamp: 'KenD 4/10/2013 09:49'!
ascii
	"We don't do ASCII"
	
	DomainError signal: 'Unicode does not fit into ASCII; ASCII is a subset of Unicode'! !

!UniFileStream methodsFor: 'properties-setting' stamp: 'KenD 4/10/2013 21:34'!
unicode
	"the only thing we do"
	self binary! !

!UniFileStream methodsFor: 'access' stamp: 'KenD 8/28/2016 08:35:07'!
contents
	"Answer the file contrents as a UniString. Reset position to original"
	
	| oldPos result |
	self ensureOpen.
	oldPos := self position.
	self resetToStart.
	result := self next: self size.
	self position: oldPos.
	^ result asUniString! !

!UniFileStream methodsFor: 'access' stamp: 'KenD 8/28/2016 16:59:56'!
contentsOfEntireFile
	"Read all of the contents of the receiver."

	| s |
	self readOnly.
	self binary.
	self reset.
	s := self next: self size.
	self close.
	^ s asUniString! !

!UniFileStream methodsFor: 'access' stamp: 'KenD 4/10/2013 16:58'!
next: anInteger 
	"Answer the next anInteger elements of my collection."
	
	^ self nextUpTo: anInteger ! !

!UniFileStream methodsFor: 'access' stamp: 'KenD 4/10/2013 16:51'!
peekFor: item 
	"Answer false and do not advance if the next element is not equal to item, or if this stream is at the end.  If the next element is equal to item, then advance over it and return true"
	| next oldPos |
	oldPos := self position.
	
	(next _ self next) ifNil: [ ^ false ].

	(item = next) ifTrue: [ ^ true ].

	self position: oldPos.
	^ false! !

!UniFileStream methodsFor: 'initialize-release' stamp: 'KenD 4/10/2013 21:38'!
initialize

	super initialize.
	self binary.   "My buffer of bytes in UTF-8 encoding"
! !

!UniFileStream methodsFor: 'testing' stamp: 'KenD 4/10/2013 15:43'!
isAscii
	^false! !

!UniFileStream methodsFor: 'testing' stamp: 'KenD 4/10/2013 15:43'!
isBinary
	^false! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/10/2013 16:43'!
next: count into: aUniString startingAt: startIndex
	"Answer a UniString altered by reading count Unicode characters spliced in at startIndex .
	Return a UniString or a partial copy if less than count elements have been read."
	
	| splice uString |
	splice := self nextUpTo: count.
	uString := aUniString asUniString.
	
	^ (uString copyFrom: 1 to: (startIndex - 1)) , 
	  splice , 
	  (uString copyFrom: startIndex to: uString size)
! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/10/2013 17:04'!
next: anInteger putAll: aCollection startingAt: startIndex
	"Store the next anInteger elements from the given collection."
	
	^ self nextPutAll: ((aCollection asUniString) copyFrom: startIndex to: (aCollection size)).
! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 9/15/2016 08:28:50'!
nextCodePoint
	"Answer the next Unicode codePoint"

	^ Integer nextUnicodeCodePointFromUtf8: self! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/10/2013 10:15'!
nextPut: uniChar
	"Write the UniChar codePoint to this file encoded as UTF-8."

	| codePoint |
	codePoint := uniChar codePoint.
	codePoint < 128 ifTrue: [ 
		^ self nextPutByte: codePoint ].
	codePoint < 2048 ifTrue: [ 
		^ self 
			nextPutByte: (2r11000000 + (codePoint bitShift: -6)); 
			nextPutByte: (2r10000000 + (codePoint bitAnd: 2r111111)) ].
	codePoint < 65535 ifTrue: [ 
		^ self 
			nextPutByte: (2r11100000 + (codePoint bitShift: -12));
			nextPutByte: (2r10000000 + ((codePoint bitShift: -6) bitAnd: 2r111111)); 
			nextPutByte: (2r10000000 + (codePoint bitAnd: 2r111111)) ].
	codePoint <= 16r10FFFF  ifTrue: [  "maximumUTF8Code"
		^ self 
			nextPutByte: (2r11110000 + (codePoint bitShift: -18));
			nextPutByte: (2r10000000 + (codePoint bitShift: -12));
			nextPutByte: (2r10000000 + ((codePoint bitShift: -6) bitAnd: 2r111111)); 
			nextPutByte: (2r10000000 + (codePoint bitAnd: 2r111111)) ].
	self error: 'Unicode character code point outside range'
! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 9/19/2016 08:44:38'!
nextPutAll: aCollection
	"Write all the Unicode characters of the given collection to this file."
	
	(aCollection asUniString) codePointsDo: [ :codePoint | self nextPut: codePoint ].
	^ aCollection "what StandardFileStream returns"
! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 9/15/2016 08:31:09'!
nextUniChar
	"Answer the next UniChar"

	^ self nextCodePoint asUniChar! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 9/15/2016 08:33:37'!
nextUpTo: count
	"Answer a subcollection from the current access position through count or EOF."
		
	| result numRead |
	result := UniStringWrapper new.
	numRead := 0.
	
	[(self atEnd) or: [numRead >= count]] whileFalse: [ 
		result nextPut: self nextUniChar.
		numRead := numRead + 1.
	].

	^ result asUniString! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/10/2013 15:48'!
padToEndWith: aChar
	"On the Mac, files do not truncate.  One can delete the old file and write a new one, but sometime deletion fails (file still open? file stale?).  This is a sad compromise.  Just let the file be the same length but pad it with a harmless character."

	| pad |
	pad := aChar asUniChar.
	[self atEnd] whileFalse:  [ self nextPut: pad ].! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/10/2013 15:50'!
peek
	"Answer what would be returned if the message next were sent to the receiver. If the receiver is at the end, answer nil.  "
	| next oldPos |
	self atEnd ifTrue: [ ^ nil ].
	oldPos := self position.
	next _ self next.
	self position: oldPos.
	^ next! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/10/2013 17:11'!
readInto: byteArray startingAt: startIndex count: count
	"Read into the given array as specified, and return the count
	actually transferred.  index and count are in units of bytes or
	longs depending on whether the array is Bitmap, String or ByteArray"
	
	"This is a DANGEROUS way to get binary data dirtectly without opening a binary fileStream.
	 There is NO synchronization between bytes and UTF-8 encoded codePoints.
	NOTE: This will NOT work with a UniString in place of a byteArray!!"
	Transcript log: 'WARNING: UniFileStream>>readInto:startingAt:count: invoked on ',
						(self printString).

	^super readInto: byteArray startingAt: startIndex count: count! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/17/2013 08:13'!
skip: anInteger
	"Set the byte position to anInteger bytes from the current position.
	anInteger can be positive o negative.
	Error if not enough bytes left in the file. "

	| newPos |
	newPos := self position + anInteger.
	
	(newPos < 0) 
	ifTrue: [ self error: 'Can''t set file position to before beginning of file' ].
	
	(newPos > readLimit) 
	ifTrue: [ self error: 'Can''t set file position past end of file' ].
	
	^ self position: (self position + anInteger)! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/10/2013 16:14'!
upTo: delim 
	"Answer a UniString of UniChars up to the delimiter or EOF."
	"Read but do NOT return the delimiter"
	
	| result delimiter |
	delimiter := delim asUniChar.
	result := UniStringWrapper new.
	[self atEnd] whileFalse: [ | nextUniChar |
		nextUniChar := self next.
		
		(nextUniChar = delimiter) 
		ifTrue: [ ^ result asUniString ]
		ifFalse: [ result nextPut: nextUniChar ].
	].
	"Reached EOF = End Of File"
	^ result asUniString! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/10/2013 16:18'!
upToAny: aCollection 
	"Similar to upTo:, but find any of the objects in aCollection"
	
	| result delimiters |
	(aCollection isKindOf: UniString)
	ifTrue: [ delimiters := aCollection ] 
	ifFalse: [ delimiters := (aCollection collect: [ :elt | elt asUniChar ]) asUniString ].
	
	result := UniStringWrapper new.
	[self atEnd] whileFalse: [ | nextUniChar |
		nextUniChar := self next.
		
		(delimiters includes: nextUniChar) 
		ifTrue: [ ^ result asUniString ]
		ifFalse: [ result nextPut: nextUniChar ].
	].
	"Reached EOF = End Of File"
	^ result asUniString! !

!UniFileStream methodsFor: 'read, write, position' stamp: 'KenD 4/10/2013 16:15'!
upToEnd
	"Answer a subcollection from the current access position through the last element of the receiver."
		
	| result |
	result := UniStringWrapper new.
	
	[self atEnd] whileFalse: [ result nextPut: self next ].

	^ result asUniString! !

!UniFileStream methodsFor: 'private' stamp: 'KenD 4/10/2013 21:50'!
nextPutByte: aByte
	"Write the given byte to a file"

	^ super nextPut: aByte asCharacter
"	rwmode ifFalse: [^ self error: 'Cannot write a read-only file'].
	collection ifNotNil: [ 
		position < readLimit ifTrue: [ self flushReadBuffer ] ].
	buffer1 at: 1 put: aByte.
	self primWrite: fileID from: buffer1 startingAt: 1 count: 1.
	^ aByte
"! !

!UniFileStream class methodsFor: 'concrete classes' stamp: 'KenD 4/12/2013 15:32'!
concreteStream
	"Who should we really direct class queries to? "
	^ UniFileStream! !

!UniTextEditor methodsFor: 'editing keys' stamp: 'KenD 8/28/2016 17:06:20'!
addString: aString
	"Think of a better name"
	"This is a user command, and generates undo"

	self replaceSelectionWith: aString asUniString asText! !

!UniTextEditor methodsFor: 'editing keys' stamp: 'KenD 8/28/2016 17:12:52'!
afterSelectionInsertAndSelect: aString
	"This is a user command, and generates undo"

	self insertAndSelect: aString asUniString at: self stopIndex ! !

!UniTextEditor methodsFor: 'editing keys' stamp: 'KenD 8/27/2016 18:21:53'!
paste
	"Paste the text from the shared buffer over the current selection and 
	redisplay if necessary."
	
	| currentContents clipString |
	currentContents := morph model actualContents.
	clipString := 
		((currentContents is: #UniString)
		 or: [(currentContents is: #Text) 
			and: [ currentContents string is: #UniString]])
		ifTrue: [ self clipboardStringOrText asUniString asText]
		ifFalse: [ self clipboardStringOrText ].
	
	self replaceSelectionWith: clipString ! !

!UniTextEditor methodsFor: 'editing keys' stamp: 'KenD 9/11/2016 15:51:34'!
save
	"Save command"
	model fileName ifNotNil: [
		model save
			ifTrue: [ morph hasUnacceptedEdits: false ]
		]
		 ifNil: [ self saveAs ].
	^true! !

!UniTextEditor methodsFor: 'editing keys' stamp: 'KenD 9/11/2016 16:03:34'!
save: aKeyboardEvent
	"Save keystroke"
"	^self save "

	self acceptContents.
	^ true! !

!UniTextEditor methodsFor: 'editing keys' stamp: 'KenD 9/15/2016 14:06:50'!
saveAs
	"SaveAs command"
	| fileName |
	fileName _ UniFillInTheBlankMorph
			request: 'File name?'
			initialAnswer: ''.
	fileName isEmpty ifTrue: [ ^false ]. "abort"

	model saveAs: fileName.	
	morph hasUnacceptedEdits: false.
	morph owningWindow
		setLabel: model labelString;
		invalidateTitleArea.
	
	^true! !

!UniTextEditor methodsFor: 'editing keys' stamp: 'KenD 9/9/2016 08:19:57'!
selection
	"Answer the text that is currently selected."

	| t firstIndex lastIndex |
	t _ model actualContents.
	firstIndex _ self startIndex.
	lastIndex _ self stopIndex - 1.
	(firstIndex = 1 and: [ lastIndex = t size ])
		ifTrue: [ ^t ].
	(t string isKindOf: UniString)
	ifTrue: [^ ( t string copyFrom: firstIndex to: lastIndex) asText  ]
	ifFalse: [
		^Text streamContents: [ :strm |
			"Multiple selection"
			selectionStartBlocks with: selectionStopBlocks do: [ :startBlock :stopBlock | | toAppend |
				toAppend _ t copyFrom: startBlock stringIndex to: stopBlock stringIndex - 1.
				toAppend size > 0 ifTrue: [
					strm nextPutAll: toAppend.
					strm withAttributes: (toAppend attributesAt: toAppend size) do: [ strm newLine ]]].
			"Regular selection"
			strm nextPutAll: ( t copyFrom: firstIndex to: lastIndex ) ]
	]! !

!UniTextEditor methodsFor: 'menu messages' stamp: 'KenD 9/9/2016 08:39:24'!
find
	"Prompt the user for a string to search for, and search the receiver from the current selection onward for it.  1/26/96 sw"

	| reply |
	reply _ UniFillInTheBlankMorph request: 'Find what? ' initialAnswer: self class findText asUniString.
	"Set focus on our text morph, so that cmd-g does the search again"
	morph world activeHand newKeyboardFocus: morph.
	reply size = 0 ifTrue: [
		^ self].
	self setSearch: reply.
	ChangeText _ self class findText.  "Implies no replacement to againOnce: method"
	(self findAndReplaceMany: false)
		ifFalse: [ self flash ].

"	morph installEditorToReplace: self"! !

!UniTextEditor methodsFor: 'accessing' stamp: 'KenD 9/19/2016 12:19:55'!
icon

	^ Theme textEditorIcon! !

!UniTextEditor methodsFor: 'initialization' stamp: 'KenD 9/4/2016 16:37:48'!
initialize

	super initialize.
	self defaultFont: UniForms default! !

!UniTextEditor class methodsFor: 'keyboard shortcut tables' stamp: 'KenD 8/28/2016 15:02:34'!
basicCmdShortcutsSpec
	"
	Editor initialize
	"

	"arranged in QWERTY keyboard order"
	^#(
		#(		$a 	#selectAll:				'Select all')
		#(		$f 	#find:						'Find')
		#(		$g 	#findAgain:				'Find again')
		#(		$h 	#help:					'Open this help')
		#(		$j 	#setSearchString:		'Set selection as search string for find again')

		#(		$z 	#undo:					'Undo (multiple levels)')
		#(		$x 	#cut:						'Cut selection and store it in the Clipboard')
		#(		$c 	#copySelection:		'Copy selection to the Clipboard')
		#(		$v 	#paste:					'Paste Clipboard contents')

		#(		$Z	#redo:					'Redo (multiple levels)')
	)! !

!UniTextEditor class methodsFor: 'keyboard shortcut tables' stamp: 'KenD 8/28/2016 14:59:14'!
cmdShortcutsSpec
	"
	UniTextEditor initialize.
	"
	"arranged in QWERTY keyboard order"
	^#(
		#(		$s	#save:						'Save (i.e. accept)')
		#(		$u	#align:						'Toggle alignment')
	)! !

!UniTextEditor class methodsFor: 'keyboard shortcut tables' stamp: 'KenD 8/27/2016 16:04:42'!
initializeMenu
	"Initialize the mouseButton2 (right button) pop-up menu and corresponding messages."
	"
	UniTextEditor initializeMenu.
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
		{'Copy (c)'.						#copySelection}.
		{'Cut (x)'.						#cut}.
		{'Paste (v)'.					#paste}.
		{'Paste without Format'.		#pasteString}.
		{'Paste...'.						#pasteRecent}.
		#-.
		{'Toggle WordWrap'.			#wrapOnOff}.
		{'Set Alignment...'.				#chooseAlignment}.
	}! !

!UniTextEditor class methodsFor: 'cached state access' stamp: 'KenD 10/25/2016 15:04:51'!
changeText
	ChangeText ifNil: [
		ChangeText _ Text fromString: UniString emptyString ].
	^ChangeText! !

!UniTextEditor class methodsFor: 'cached state access' stamp: 'KenD 10/25/2016 15:05:30'!
findText
	FindText ifNil: [
		FindText _ Text fromString: UniString emptyString ].
	^FindText
	! !

!UniTextEditor class methodsFor: 'file reader registration' stamp: 'KenD 8/27/2016 14:04:37'!
fileReaderServicesForFile: filename suffix: suffix
	"FileList buttons that open a UnicodeText Editor on contents."

	(#('utf8' 'txt') includes: suffix) ifTrue: [
		^ { self serviceUniTextEdit } ].

	^#()! !

!UniTextEditor class methodsFor: 'file reader registration' stamp: 'KenD 8/27/2016 14:03:25'!
serviceUniTextEdit
	"Answer the service of opening a file in a RopeTextEditor"

	^ (SimpleServiceEntry
		provider: self 
		label: 'open a Unicode text file'
		selector: #openFromFileEntry:
		description: 'open this file with a Unicode Text Editor'
		buttonLabel: 'Unicode Text Edit')
		argumentGetter: [ :fileList | fileList selectedFileEntry ]! !

!UniTextEditor class methodsFor: 'file reader registration' stamp: 'KenD 8/27/2016 14:02:39'!
unload
"
	self unload.
"

	FileList unregisterFileReader: self ! !

!UniTextEditor class methodsFor: 'instance creation' stamp: 'KenD 8/27/2016 14:11:33'!
fromFile: aFileNameString
"
	UniTextEditor fromFile: 'utf8sampler.txt'.
"
	| fileEntry |
	fileEntry := aFileNameString asFileEntry.
	(fileEntry exists)
	ifFalse: [ self error: 'No file ''', aFileNameString , ''' was found' ]
	ifTrue:  [ self openFromFileEntry: fileEntry ]! !

!UniTextEditor class methodsFor: 'instance creation' stamp: 'KenD 5/7/2013 14:28'!
fromUser
"
	UniTextEditor fromUser.
"
	UniTextModel fromUser! !

!UniTextEditor class methodsFor: 'instance creation' stamp: 'KenD 9/15/2016 14:09:41'!
openFromFileEntry: fileEntry

	| model fileName  |
	fileName := fileEntry pathName.
	model := UniTextModel fromFile: fileName.
	model isNil ifFalse: [
		SystemWindow 
			editText: model
			label: model labelString
			wrap: true.
	]! !

!UniTextEditor class methodsFor: 'instance creation' stamp: 'KenD 8/27/2016 14:08:55'!
openTextEditor

	UniTextModel openLabel: 'Unicode Editor'! !

!UniTextEditor class methodsFor: 'class initialization' stamp: 'KenD 8/27/2016 14:05:10'!
initialize

"
	UniTextEditor initialize.
"
	super initialize.
	self initializeMenu.
	FileList registerFileReader: self.
	! !

!UniTextEditor class methodsFor: 'menu-world' stamp: 'KenD 1/20/2019 17:01:01'!
searchIcon

	^ Theme content from: 'Theme' get: {'16x16'. 'apps'. 'accessories-text-editor.png'}.! !

!UniTextEditor class methodsFor: 'menu-world' stamp: 'KenD 1/20/2019 17:02:41'!
worldMenuForOpenGroup
	"Answer the information required to add me to the World menu-->Open.. submenu"
	"i.e. an array with one item: a Dictionary"
	| arr |
	arr := `{{
			#itemGroup 		-> 		10.
			#itemOrder 		-> 		10.
			#label 			->			 'Unicode Editor'.
			#object 			-> 		UniTextEditor.
			#selector 		-> 		#openTextEditor.
			#balloonText 	-> 		'A window for composing Unicode text'.
		} asDictionary}`.
	(arr at: 1) at: #icon put: self searchIcon.
	^arr! !

!UniForms methodsFor: 'measuring' stamp: 'KenD 4/6/2013 16:57'!
approxWidthOfText: aText
"Return the width of aText -- quickly, and a little bit dirty. Used by lists morphs containing Text objects to get a quick, fairly accurate measure of the width of a list item."

	"@@@Fixme: Scan for zero, half width codepoints @@@"
    ^ 16 * (aText size)! !

!UniForms methodsFor: 'measuring' stamp: 'KenD 4/6/2013 17:16'!
widthOf: aCharacter
		"@@FIXME: Zero (combining marks, zero width space, ..), 8 (half width :Latin), 16 (full width)"
	^ self class widthOf: aCharacter ! !

!UniForms methodsFor: 'measuring' stamp: 'KenD 4/6/2013 17:02'!
widthOfString: aString


	^ (1 to: aString size) inject: 0 into: [ :accum :char | accum + (self widthOf: char) ]! !

!UniForms methodsFor: 'measuring' stamp: 'KenD 4/6/2013 17:06'!
widthOfString: aString from: startIndex to: stopIndex
	"Measure the length of the given string between start and stop index"

	^ (startIndex to: stopIndex) inject: 0 into: [ :accum :char | accum + (self widthOf: char) ]! !

!UniForms methodsFor: 'measuring' stamp: 'KenD 4/6/2013 17:09'!
widthOfStringOrText: aStringOrText

	^ self widthOfString: aStringOrText asUniString! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 17:14'!
ascent

	^16! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 17:14'!
baseFont

	^self! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 17:14'!
descent

	^ 0! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 17:15'!
descentKern

	^ 0! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 17:15'!
emphasis

	^ 0! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 17:15'!
emphasized: code
	"@@Fixme: BOGUS@@"
	^ self! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 19:13'!
familyName

	^'UniFont'! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 17:11'!
height

	^16! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 16:47'!
name

	"Answer my font name"
	^ 'GNU Unifont'! !

!UniForms methodsFor: 'accessing' stamp: 'KenD 4/6/2013 17:12'!
pointSize

	^16! !

!UniForms methodsFor: 'comparing' stamp: 'KenD 9/5/2016 08:06:50'!
dominates: otherFontFamilyAndSize

	^ true! !

!UniForms methodsFor: 'testing' stamp: 'KenD 5/2/2014 20:18'!
isBaseFont

	^ true! !

!UniForms methodsFor: 'testing' stamp: 'KenD 4/30/2014 16:40'!
isBold

	^ false "NYI"! !

!UniForms methodsFor: 'as yet unclassified' stamp: 'KenD 9/5/2016 15:11:47'!
on: aGrafPort displayString: aString from: firstIndex to: lastIndex at: p color: color
	"Show a representation of aString as a DisplayText at location aPoint on aDisplayMedium, using black-colored text."

	| delta |
	delta _ 0.
	firstIndex to: lastIndex do: [ :index |
		| uniChar width |
		uniChar _ aString at: index.
		width _ UniForms widthOf: uniChar.
		width isZero ifFalse: [
			aGrafPort copyForm: (UniForms formForCodePoint: uniChar codePoint) to: ((p x + delta) @ (p y)) rule: Form and.
			delta _ delta + width ]]! !

!UniForms class methodsFor: 'private' stamp: 'KenD 4/7/2013 15:33'!
array16FromHexString: aString
	"aString consists of 32 or 64 hex digits.
	If 32, form into 16rXX where XX is each succeeding pair of hex digits.
	If 64, form into 16rXXXX where hex digits are taken in 4s
	Shift left 16 and answer the resultant array, which must be size 16
	"
	| coll hexStr |
	coll := OrderedCollection new: 16.
	
	"@@FIXME: Find a smart way to do this"
	
	(aString size = 32) ifTrue: [
		hexStr := '16rXX00'. 
		1 to: 32 by: 2 do: [ :index |
			hexStr at: 4 put: (aString at: index).
			hexStr at: 5 put: (aString at: index + 1).
			coll addLast: (hexStr asNumber)
		]
	]
	ifFalse: [ 
		(aString size = 64) 
			ifFalse: [Error signal: 'Malformed hex pixel string ' , aString].
		
		hexStr := '16rXXXX'. "Full-width glyph"
		1 to: 64 by: 4 do: [ :index |
			 hexStr at: 4 put: (aString at: index).
			 hexStr at: 5 put: (aString at: index + 1).
			 hexStr at: 6 put: (aString at: index + 2).
			 hexStr at: 7 put: (aString at: index + 3).
			coll addLast: (hexStr asNumber)
		]
	].
	
	^ ( coll asArray collect: [ :bits | bits bitShift: 16] ) 
! !

!UniForms class methodsFor: 'private' stamp: 'KenD 4/17/2013 14:26'!
defaultFormForMissingChar

	"Answer a DIAGONAL CROSS for missing forms"
	^ (FormsArray at: 16r2573)! !

!UniForms class methodsFor: 'private' stamp: 'KenD 4/17/2013 14:24'!
formForMissingChar

	^FormForMissingChar! !

!UniForms class methodsFor: 'private' stamp: 'KenD 4/17/2013 14:25'!
formForMissingChar: aForm

	(aForm isKindOf: Form) ifFalse: [DomainError signal: 'formForMissingChar: requires a Form'].
	FormForMissingChar := aForm! !

!UniForms class methodsFor: 'private' stamp: 'KenD 3/2/2013 20:04'!
formsArray

	"Note: Unicode indexes from zero, so index is 1+codePoint."
	^FormsArray 	! !

!UniForms class methodsFor: 'private' stamp: 'KenD 4/7/2013 13:16'!
oldArray16FromHexString: aString
	"aString consists of 32 or 64 hex digits.
	If 32, form into 16rXX where XX is each succeeding pair of hex digits.
	If 64, form into 16rXXXX where hex digits are taken in 4s
	Shift left 16 and answer the resultant array, which must be size 16
	"
	| coll hexStr |
	coll := OrderedCollection new: 16.
	
	"@@FIXME: Find a smart way to do this"
	
	(aString size = 32) ifTrue: [
		hexStr := '16rXX0'. "Zero at end centers a half-width glyph"
		1 to: 32 by: 2 do: [ :index |
			hexStr at: 4 put: (aString at: index).
			hexStr at: 5 put: (aString at: index + 1).
			coll addLast: (hexStr asNumber)
		]
	]
	ifFalse: [ 
		(aString size = 64) 
			ifFalse: [Error signal: 'Malformed hex pixel string ' , aString].
		
		hexStr := '16rXXXX'. "Full-width glyph"
		1 to: 64 by: 4 do: [ :index |
			 hexStr at: 4 put: (aString at: index).
			 hexStr at: 5 put: (aString at: index + 1).
			 hexStr at: 6 put: (aString at: index + 2).
			 hexStr at: 7 put: (aString at: index + 3).
			coll addLast: (hexStr asNumber)
		]
	].
	
	^ ( coll asArray collect: [ :bits | bits  bitShift: 16] )
! !

!UniForms class methodsFor: 'font' stamp: 'KenD 4/6/2013 18:58'!
default
	^self new! !

!UniForms class methodsFor: 'accessing' stamp: 'KenD 5/5/2014 21:23'!
formForCodePoint: aCodePoint

	"Answer a form for glyph/character at codePoint or nil"

	| index form |
	index := aCodePoint + 1. "Convert to zero based index"
	
	(index < 1)
	ifTrue: [DomainError signal: 'Unicode code point out of range ' , aCodePoint printString ].
	
	(index > 16rFFFF or: [(form := FormsArray at: index) isNil])
	"Substitute DIAGONAL CROSS for missing forms"
	ifTrue: [ ^ self formForMissingChar ] 
	ifFalse: [ ^ form ]! !

!UniForms class methodsFor: 'accessing' stamp: 'KenD 5/5/2014 21:24'!
sliceStart: codePoint size: arraySize
	"Answer a slice of forms"
"
	(UniForms sliceStart: 16r2701 size: 40) explore.   "" Dingbats ""
"
	| slice |
	slice := Array new: arraySize.
	1 to: arraySize do: [ :idx |
		slice at: idx put: (UniForms formForCodePoint: idx - 1 + codePoint)
	].

	^ slice! !

!UniForms class methodsFor: 'measuring' stamp: 'KenD 4/6/2013 19:02'!
height

	^ 16! !

!UniForms class methodsFor: 'measuring' stamp: 'KenD 9/5/2016 15:09:48'!
widthOf: aCharacterOrCodePoint
		"@@FIXME: Zero (combining marks, zero width space, ..), 8 (half width :Latin), 16 (full width)"
	| codePoint |
	(aCharacterOrCodePoint isInteger)
	ifTrue: [codePoint := aCharacterOrCodePoint ]
	ifFalse: [codePoint := aCharacterOrCodePoint codePoint ].
	
	^ (self formForCodePoint: codePoint) width! !

!UniForms class methodsFor: 'measuring' stamp: 'KenD 4/6/2013 19:01'!
widthOfString: aString

	^ (1 to: aString size) inject: 0 into: [ :accum :char | accum + (self widthOf: char) ]! !

!UniForms class methodsFor: 'measuring' stamp: 'KenD 4/6/2013 19:01'!
widthOfStringOrText: aStringOrText

	^ self widthOfString: aStringOrText asUniString! !

!UniForms class methodsFor: 'class initialization' stamp: 'KenD 9/5/2016 15:11:55'!
heightOf: CharOrCodePoint
	"Answer my display width"

	| codePoint |
	(CharOrCodePoint isInteger)
	ifTrue: [ codePoint := CharOrCodePoint ]
	ifFalse: [ codePoint := CharOrCodePoint codePoint ].
	^ (self formForCodePoint: codePoint) height
		! !

!UniForms class methodsFor: 'class initialization' stamp: 'KenD 12/31/1969 16:35'!
initialize
"
	UniForms initialize.
"

	FormsArray := self readFormsArray: 'unifont-5.1.20080907.hex'.
	"'unifontfull-5.1.20080820.hex'."
	"unifont-5.1.20080907.hex"
	self formForMissingChar: (self defaultFormForMissingChar).
	self installMeAsFont. "Fake it"
	! !

!UniForms class methodsFor: 'class initialization' stamp: 'KenD 4/6/2013 19:26'!
installMeAsFont
"
	UniForms installMeAsFont.
"
	| uniFontDict |
	uniFontDict := Dictionary new.
	uniFontDict at: 16 put: (self default).
	AvailableFonts at: 'UniFont' put: uniFontDict.! !

!UniForms class methodsFor: 'class initialization' stamp: 'KenD 6/1/2016 15:24'!
readFormsArray: fileName

	| formsArray |
	formsArray := Array new: 16rFFFF + 1 withAll: nil.
	(self package fullFileName asFileEntry parent pathName,  '/', fileName) asFileEntry
		readStreamDo: [ :fileStream | | aLine |
			aLine := fileStream nextLine.
			"Each line is of form:  
				  <codePoint>:<bits>
			where <codePoint> is 4 hex digits and
			<bits> are either 32 or 64 hex digits. "
			[aLine isNil] whileFalse:[ |tokens codePoint pixelArray|
				(aLine size > 0) ifFalse: [
					self error: 'Bad file format ' , fileName.
				^formsArray
			].
			tokens := aLine findTokens: ':' . "Split line at colon"
			(tokens size = 2) ifFalse: [Error signal: 'Malformed UniForm line: ' , aLine].
			codePoint := ( '16r', (tokens at: 1)) asNumber.
			((codePoint > 16rFFFF) or: [codePoint < 0]) ifTrue: [Error signal: 'Bad codePoint ' , (tokens at: 1) ].
			pixelArray := self array16FromHexString: (tokens at: 2).
		
			((tokens at: 2) size = 32)
			ifTrue: [ "Half Width Character"
				formsArray 
					at: (1 + codePoint)  "Note Bene: CodePoints start at zero"
					put:  (Form extent: 8@16 fromArray: pixelArray offset: (0 @ 0))
			]
			ifFalse: [ "Full width character"
				formsArray 
					at: (1 + codePoint) "Note Bene: CodePoints start at zero"
					put:  (Form extent: 16@16 fromArray: pixelArray offset: (0 @ 0)).
			].
			aLine := fileStream nextLine.
		]
	].
	^formsArray
	
	
	! !

!UniForms class methodsFor: 'licence' stamp: 'KenD 3/4/2013 07:30'!
licence

^
'GNU Unifont licence is GPL 2 -- details below

Original files from:

	http://www.unifoundry.com/unifont.html

OVERVIEW
--------
The Unifont is a dual-width (8x16/16x16) bitmap font, designed to provide
coverage for all of Unicode Plane 0, the Basic Multilingual Plane (BMP).
This version has a glyph for each visible code point in the Unicode 5.1
Basic Multilingual Plane.

Note that this version of the Unifont only provides a single glyph
for each character, making it impossible to handle any language that
needs context-dependent character shaping well. It is supplied in the
form of a hex file, with a converter to convert it to bdf. See
http://czyborra.com/unifont/ or http://unifoundry.com/unifont.html
for more information.

unifont AUTHORS
---------------
Roman Czyborra created the original GNU Unifont, including the
.hex format.  For greater detail, see the HISTORY section below.

David Starner aggregated many glyphs contributed by others and
built these into earlier unifont releases.

Qianqian Fang began his Wen Quan Yi fonts in 2004; most of the
almost 30,000 CJK ideographs in the latest unifont were taken
from Wen Quan Yi with permission of Qianqian Fang.  

Changwoo Ryu created the 11,172 thick-stroke Hangul Syllables glyphs
using thin-stroke glyphs from the xfonts-baekmuk Debian package, in
the file unifont.bdf in the Debian bf-utf-source package.  The fonts
in the xfonts-baekmuk Debian package were created by Jeong-Hwan Kim.
Replacing the thick-stroke Hangul glyphs was a desire expressed by
Roman Czyborra for years.

Paul Hardy merged Qianqian Fang''s unibit and Wen Quan Yi glyphs
into the GNU Unifont (with lots of help and enthusiasm from Qianqian
Fang), copied the Hangul Syllables glyphs from Changwoo Ryu''s copy
of unifont.bdf, drew about 8,500 more glyphs, and replaced the
existing Tibetan glyphs with new ones contributed by Rich Felker.


LICENSE
-------
Roman Czyborra released his work (Perl scripts and font .hex files)
under the following terms:

     All of my works you find here are freeware. You may
     freely copy, use, quote, modify or redistribute them
     as long as you properly attribute my contribution and
     have given a quick thought about whether Roman might
     perhaps be interested to read what you did with his
     stuff. Horizontal rules don''t apply.

David Starner released what in this package is named "hex2bdf-split"
under the same license as Roman Czyborra''s work.

License 

     These are released under the terms of the GNU General Public
     License version 2, or (at your option) a later version.

License for Fonts:

     Any fonts using glyphs from the "wqy-cjk.hex" file (including
     the default TrueType font) are bound by the terms of the Wen
     Quan Yi font license.  Those fonts are released under the terms
     of the GNU General Public License (GPL) versionn 2, with the
     exception that embedding the font in a document does not by
     itself bind that document to the terms of the GNU GPL.

     Any fonts that do not use glyphs from the wqy-cjk.hex file
     fall under the above License for all of Roman Czyborra''s work

     The fonts in "./font/precompiled" do use wqy-cjk.hex, and so
     are licensed under the GNU GPL version 2, with the exception
     that embedding the font in a document does not in itself bind
     that document to the terms of the GNU GPL.  The following
     paragraphs explaining the exception is taken from the Wen
     Quan Yi font distribution:

          ** GPL v2.0 license with font embedding exception:

          As a special exception, if you create a document which
          uses this font, and embed this font or unaltered portions
          of this font into the document, this font does not by
          itself cause the resulting document to be covered by
          the GNU General Public License. This exception does not
          however invalidate any other reasons why the document
          might be covered by the GNU General Public License.
          If you modify this font, you may extend this exception
          to your version of the font, but you are not obligated
          to do so. If you do not wish to do so, delete this
          exception statement from your version.

License for blanks.hex

     There is one exception to the above rules: Paul Hardy earlier
     released the blanks.hex file into the public domain.

'
! !

!UniTextModelMorph methodsFor: 'initialization' stamp: 'KenD 9/9/2016 14:05:09'!
innerMorphClass
	^InnerUniTextMorph! !

!UniTextModelMorph class methodsFor: 'instance creation' stamp: 'KenD 9/9/2016 14:06:19'!
textProvider: aTextProvider textGetter: textGetter textSetter: textSetter selectionGetter: selectionGetter
	| newModel answer |
	answer _ self new.
	newModel _ PluggableUniTextModel on: aTextProvider.
	newModel textGetter: textGetter textSetter: textSetter selectionGetter: selectionGetter.
	aTextProvider addDependent: newModel.
	answer model: newModel.
	^answer! !

!UniTextModelMorph class methodsFor: 'instance creation' stamp: 'KenD 9/9/2016 14:07:11'!
withText: aTextOrString
	^self withModel: (UniTextModel withText: aTextOrString asUniString asText)! !

!InnerUniTextMorph methodsFor: 'private' stamp: 'KenD 10/25/2016 14:48:06'!
installEditorAndTextComposition
	"Install an editor for my textComposition. Install also the textComposition."
	| e tc |
	
	"Editor and TextComposition are assigned here atomically."
	e _ model editorClass new morph: self.
	e model: model.
	e defaultFont: UniForms default.
	tc _ UniTextComposition new.
	"Keep critical section short"
	self mutex critical: [
		editor _ e.
		textComposition _ tc ].
	tc
		setModel: model;
		extentForComposing: self extentForComposing.
	e textComposition: tc.
	tc editor: e.
	e setEmphasisHereFromText.
	tc composeAll.
	e resetState.
	self fit.
	self selectionChanged.

	"Add extras. Text Styler and Autocompleter"
	self stylerClass:
		(Preferences syntaxHighlightingAsYouType ifTrue: [
			model textStylerClass ]).
	self autoCompleterClass:
		model autoCompleterClass! !

!UniFillInTheBlankMorph methodsFor: 'initialization' stamp: 'KenD 10/25/2016 15:15:54'!
createQueryTextMorph: queryString 
	"create the queryTextMorph"
	| result |
	result _ StringMorph new contents: queryString asUniString.
	"result font: UniForms default."
	result lock.
	result morphExtent: 24@2 * self sizeUnit.
	self addMorph: result position: 2@0.5 * self sizeUnit // 1.
	^ result! !

!UniFillInTheBlankMorph methodsFor: 'initialization' stamp: 'KenD 10/25/2016 15:12:37'!
createTextPaneAcceptOnCR: acceptBoolean
	"create the textPane"
	| result |

	self flag: #todo. "Integrate this method with the Theme system. --cbr"

	result _ UniTextModelMorph
				textProvider: self
				textGetter: #response
				textSetter: #response:
				selectionGetter: #selectionInterval.
	result hasUnacceptedEdits: true.
	result acceptOnCR: acceptBoolean.
	result morphExtent: 18@5 * self sizeUnit.
	self addMorph: result position: 1@2 * self sizeUnit.
	^ result! !

!UniFillInTheBlankMorph methodsFor: 'initialization' stamp: 'KenD 9/9/2016 14:07:55'!
createTextPaneExtent: answerExtent acceptBoolean: acceptBoolean
	"create the textPane"
	| result |

	self flag: #todo. "Integrate this method with the Theme system. --cbr"

	result _ UniTextModelMorph
				textProvider: self
				textGetter: #response
				textSetter: #response:
				selectionGetter: #selectionInterval.
	result morphExtent: answerExtent.
	result hasUnacceptedEdits: true.
	result acceptOnCR: acceptBoolean.
	result morphExtent: extent-(28@62).
	self addMorph: result position: 14@25.
	^ result! !

!UniFillInTheBlankMorph methodsFor: 'initialization' stamp: 'KenD 9/11/2016 15:07:23'!
initialize

	super initialize.
	response := UniString emptyString asText.
	responseUponCancel := UniString emptyString! !

!UniFillInTheBlankMorph methodsFor: 'initialization' stamp: 'KenD 9/9/2016 13:40:47'!
setQuery: queryString initialAnswer: initialAnswer answerExtent: answerExtent acceptOnCR: acceptBoolean 
	response := initialAnswer asUniString asText.
	done := false.
	self removeAllMorphs.
	self createQueryTextMorph: queryString.
	self createAcceptButton.
	self createCancelButton.
	textPane := self
				createTextPaneExtent: answerExtent
				acceptBoolean: acceptBoolean
	! !

!UniFillInTheBlankMorph methodsFor: 'initialization' stamp: 'KenD 10/25/2016 15:09:09'!
sizeUnit
	^ UniForms default height! !

!UniFillInTheBlankMorph methodsFor: 'user interface' stamp: 'KenD 9/11/2016 14:58:00'!
editorClassFor: textGetter

	^ UniTextEditor! !

!UniFillInTheBlankMorph methodsFor: 'accessing' stamp: 'KenD 9/11/2016 15:04:54'!
response: aText
	"Sent when text pane accepts."

	response _ aText asText string asUniString.
	done _ true.
	^ true
! !

!UniFillInTheBlankMorph class methodsFor: 'instance creation' stamp: 'KenD 9/11/2016 15:42:47'!
request: queryString initialAnswer: defaultAnswer centerAt: aPoint onCancelReturn: returnOnCancel acceptOnCR: acceptBoolean answerExtent: answerExtent
	"Create an instance of me whose question is queryString with the given initial answer. Invoke it centered at the given point, and answer the string the user accepts.   If the user cancels, answer returnOnCancel."
	"
	FillInTheBlankMorph
		request: 'Type something, then type [Return].'
		initialAnswer: 'yo ho ho!!'
		centerAt: Display center
	"

	| aFillInTheBlankMorph |
	aFillInTheBlankMorph _ self new
		setQuery: queryString
		initialAnswer: defaultAnswer asUniString
		answerExtent: answerExtent
		acceptOnCR: acceptBoolean.
	aFillInTheBlankMorph responseUponCancel: returnOnCancel asUniString.
	self runningWorld addMorph: aFillInTheBlankMorph centeredNear: aPoint.
	^ aFillInTheBlankMorph getUserResponse
! !

!UniTextComposition methodsFor: 'access' stamp: 'KenD 10/25/2016 14:49:38'!
defaultFont
	^ UniForms default ! !

!UniChar methodsFor: 'comparing' stamp: 'KenD 2/18/2013 20:30'!
< aCharacter 
	"Answer true if codePoints are ordered as expected"

	^ (self codePoint) < (aCharacter asUniChar codePoint) " NB: Insensitive to case"! !

!UniChar methodsFor: 'comparing' stamp: 'KenD 2/18/2013 20:30'!
= aCharacter 
	"Answer true if codePoints are equal"

	^ (self codePoint) = (aCharacter asUniChar codePoint) " NB: Insensitive to case"! !

!UniChar methodsFor: 'comparing' stamp: 'KenD 2/18/2013 20:30'!
> aCharacter 
	"Answer true if codePoints are ordered as expected"

	^ (self codePoint) > (aCharacter asUniChar codePoint) " NB: Insensitive to case"! !

!UniChar methodsFor: 'comparing' stamp: 'KenD 3/21/2013 18:50'!
caseInsensitiveEqual:  aCharacter 
	"Answer true if codePoints are equal"

	^ (self caseFold codePoint ) = (aCharacter asUniChar caseFold codePoint)! !

!UniChar methodsFor: 'comparing' stamp: 'KenD 3/21/2013 18:17'!
caseInsensitiveGreater: aCharacter 
	"Answer true if codePoints are ordered as expected"

	^ (self caseFold codePoint ) > (aCharacter asUniChar caseFold codePoint)! !

!UniChar methodsFor: 'comparing' stamp: 'KenD 3/21/2013 18:16'!
caseInsensitiveGreaterOrEqual: aCharacter 
	"Answer true if codePoints are ordered as expected"

	^ (self caseFold codePoint ) >= (aCharacter asUniChar caseFold codePoint)! !

!UniChar methodsFor: 'comparing' stamp: 'KenD 3/21/2013 18:16'!
caseInsensitiveLess: aCharacter 
	"Answer true if codePoints are ordered as expected"

	^ (self caseFold codePoint ) < (aCharacter asUniChar caseFold codePoint)! !

!UniChar methodsFor: 'comparing' stamp: 'KenD 3/21/2013 18:16'!
caseInsensitiveLessOrEqual: aCharacter 
	"Answer true if codePoints are ordered as expected"

	^ (self caseFold codePoint ) <= (aCharacter asUniChar caseFold codePoint)! !

!UniChar methodsFor: 'comparing' stamp: 'KenD 2/18/2013 20:25'!
hash
	"Hash is reimplemented because = is implemented."

	^codePoint ! !

!UniChar methodsFor: 'converting' stamp: 'KenD 3/13/2013 17:04'!
asCharacter

	(codePoint < 255)
	ifTrue: [ ^ codePoint asCharacter ]
	ifFalse: [ DomainError signal: 'Unicode code point out of range for ISO 8859-15' ]! !

!UniChar methodsFor: 'converting' stamp: 'jmv 5/5/2014 22:41'!
asCursor

	"Answer my 16 x 16 form as a Cursor"
	
"
	16r2740 asUniChar asCursor beCursor.       ""  Flower 'dingbat'.  ""
	16r2764 asUniChar asCursor beCursor.       ""  Heart 'dingbat'  ""
"
	^ CursorWithMask derivedFrom: (UniForms formForCodePoint: codePoint)! !

!UniChar methodsFor: 'converting' stamp: 'KenD 2/26/2013 15:32'!
asInteger

	"Answer my value as an integer"
	^self codePoint! !

!UniChar methodsFor: 'converting' stamp: 'KenD 3/18/2013 21:41'!
asLowercase

	^self toLower! !

!UniChar methodsFor: 'converting' stamp: 'KenD 8/27/2016 20:10:28'!
asText
	^ self asUniString asText! !

!UniChar methodsFor: 'converting' stamp: 'KenD 2/17/2013 14:42'!
asUniChar

	^self! !

!UniChar methodsFor: 'converting' stamp: 'KenD 2/24/2013 15:11'!
asUniString

	^ UniString fromCodePointCollection: {self codePoint} ! !

!UniChar methodsFor: 'converting' stamp: 'KenD 3/18/2013 21:41'!
asUppercase

	^self toUpper! !

!UniChar methodsFor: 'converting' stamp: 'KenD 3/9/2013 10:32'!
caseFold

	^UniChar value: (ToCasefold at: self codePoint ifAbsent: [ ^self ])! !

!UniChar methodsFor: 'converting' stamp: 'KenD 3/21/2013 19:20'!
digitValue
	"Answer value of chareacter taken as a decimal digit."
	"Note that this differs in behavior from Character>>digitValue"
	
		"@@FIXME: Chinese numeric chars are discontiguous and need separate lookup"
"
	$2 asUniChar digitValue
"
	(codePoint < 16rFF)
	ifTrue: [ ^ self asCharacter digitValue ]
	ifFalse: [ ^ self codePoint uniDigit ]! !

!UniChar methodsFor: 'converting' stamp: 'KenD 3/9/2013 10:31'!
toLower

	^UniChar value: (ToLower at: self codePoint ifAbsent: [ ^self ])! !

!UniChar methodsFor: 'converting' stamp: 'KenD 3/9/2013 10:32'!
toUpper

	^UniChar value: (ToUpper at: self codePoint ifAbsent: [ ^self ])! !

!UniChar methodsFor: 'streams' stamp: 'KenD 4/5/2013 16:36'!
asUtf8toStream: aStream
	"Add self to aStream as Utf8"
	
	"codePoint asUtf8toStream: aStream"

	codePoint < 128 ifTrue: [ 
		^ aStream nextPut: codePoint ].
	codePoint < 2048 ifTrue: [ 
		^ aStream 
			nextPut: (2r11000000 + (codePoint bitShift: -6)); 
			nextPut: (2r10000000 + (codePoint bitAnd: 2r111111)) ].
	codePoint < 65535 ifTrue: [ 
		^ aStream 
			nextPut: (2r11100000 + (codePoint bitShift: -12));
			nextPut: (2r10000000 + ((codePoint bitShift: -6) bitAnd: 2r111111)); 
			nextPut: (2r10000000 + (codePoint bitAnd: 2r111111)) ].
	codePoint <= 16r10FFFF  ifTrue: [  "maximumUTF8Code"
		^ aStream 
			nextPut: (2r11110000 + (codePoint bitShift: -18));
			nextPut: (2r10000000 + (codePoint bitShift: -12));
			nextPut: (2r10000000 + ((codePoint bitShift: -6) bitAnd: 2r111111)); 
			nextPut: (2r10000000 + (codePoint bitAnd: 2r111111)) ].
	self error: 'Unicode character code point outside range'! !

!UniChar methodsFor: 'testing' stamp: 'KenD 3/19/2013 18:53'!
canBeGlobalVarInitial

	"Answer if I can be the start of a Smalltalk global identifier name"
	^self isUppercase! !

!UniChar methodsFor: 'testing' stamp: 'KenD 5/5/2014 21:56'!
is: aSymbol
	^ aSymbol == #UniChar or: [ super is: aSymbol ]! !

!UniChar methodsFor: 'testing' stamp: 'KenD 4/17/2013 17:34'!
isAlphaNumeric
	"Answer whether the receiver is a letter or a digit."

	^self isLetter or: [self isNumberChar]! !

!UniChar methodsFor: 'testing' stamp: 'KenD 3/28/2013 15:20'!
isCR

	^ codePoint = 16r000D! !

!UniChar methodsFor: 'testing' stamp: 'KenD 3/19/2013 18:53'!
isGenerallyValidStartOfInIdentifiers
	"Can c be the first character of an identifier? (unary or keyword selector, or variable name)
	Warning: Does not account for the fact that some classes could redefine 
	#allowUnderscoreSelectors"
	^self isLetter or: [ self  = $_ and: [ Preferences allowUnderscoreSelectors ]]! !

!UniChar methodsFor: 'testing' stamp: 'KenD 3/28/2013 15:21'!
isLF

	^ codePoint = 16r000A! !

!UniChar methodsFor: 'testing' stamp: 'KenD 3/19/2013 18:56'!
isSpecial
	"Answer whether the receiver is one of the Smalltalk special characters"
	
	"Nota Bene: This leaves out a lot of Unicode!!!!"

	^ SmalltalkSpecialChars includes: self! !

!UniChar methodsFor: 'testing' stamp: 'KenD 3/19/2013 18:57'!
isVowel
	"Answer whether the receiver is one of the vowels, AEIOU, in upper or 
	lower case, and with various diacritical marks."

	^Character vowels asUniString includes: self! !

!UniChar methodsFor: 'testing' stamp: 'KenD 12/13/2015 20:50'!
tokenish
	"Answer whether the receiver is a valid token-character--letter, digit, 
	colon or underscore."

	^(self isGenerallyValidInIdentifiers or: [self = $:]) or: [self = $_]! !

!UniChar methodsFor: 'private' stamp: 'KenD 4/17/2013 19:08'!
charCouldBeInsideWord
	"Answer true if this character's codePoint could be inside 'word'."
	
	^ ( ((self generalCategoryCode) anyMask: (LetterBit + NumberBit ))
		"See UniChar class>>initializeGeneralPropertyEnums "
			or: [ ({  CM. GL. IN. IS.  H2. H3. HL. HY. JL. JT. JV. PO. PR. NS. WJ. SG. }
					includes: (self lineBreakCategoryCode))
					or: [self hasTagWordMinNumLet] ] )
		 "See UniChar class>>initializeLineBreakProperties "
	! !

!UniChar methodsFor: 'private' stamp: 'KenD 4/17/2013 19:37'!
charCouldEndWord
	"Answer true if this character could start a 'word'."
	
	^ ( ((self generalCategoryCode) anyMask: (LetterBit + NumberBit ))
		"See UniChar class>>initializeGeneralPropertyEnums "
			or: [ {  CM. GL. IN. H2. H3. HL. JL. JT. JV. PO. PR. NS. WJ. SG. }
					includes: (self lineBreakCategoryCode) ]	)! !

!UniChar methodsFor: 'private' stamp: 'KenD 4/17/2013 19:19'!
charCouldStartWord
	"Answer true if this character could start a 'word'."
	
	^ ((self generalCategoryCode) anyMask: (LetterBit + NumberBit))
	! !

!UniChar methodsFor: 'private' stamp: 'KenD 4/21/2013 19:17'!
charIsGraphemePart
	"Answer true if my codePoint is a grapheme cluster component."
	
	"Hangul Jamo (H2 H3 JL JT JV) is tested separately: UniChar>>isHangulJamo .
	 Regional Indocators (RI tested separately; UniChar>>isRegionalIndicator .
	 Formatting Marks (Cf) are tested separately: UniChar>>isFormattingMark .
	"

	^ ( ( { Mc. Mn. Lm. Sk.  } includes: (self generalCategoryCode) ) 
		"See UniChar class>>initializeGeneralPropertyEnums "
		or: [ { CM. WJ. } includes: (self lineBreakCategoryCode)] 
		 "See UniChar class>>initializeLineBreakProperties "
	   )
		
	! !

!UniChar methodsFor: 'private' stamp: 'KenD 4/21/2013 11:52'!
nextLVTStateFromState: aState
	"aState is one of L V T LV LVT or zero (=> exit). 
	Answer next state based on my lineBreakCategoryCode"
	
	"Note table 1c in  Unicode Annex #29: Unicode Text Segmentation
	and UniChar class>>initializeHangulJamoLVT"
	| index |
	(aState between: 1 and: 5) ifFalse: [ ^ 0 ]. "zero" 
	index := LVTStateMap at: (self lineBreakCategoryCode).
	(index isZero)
		ifTrue: [ ^ 0 ] "zero"
		ifFalse: [ ^ (LVTStateVec at: aState) at: index ] "Next State"! !

!UniChar methodsFor: 'private' stamp: 'KenD 2/17/2013 09:00'!
privateSetCodePoint: aCodePoint

	codePoint := aCodePoint ! !

!UniChar methodsFor: 'accessing' stamp: 'KenD 2/17/2013 08:58'!
codePoint

	^codePoint! !

!UniChar methodsFor: 'accessing' stamp: 'KenD 4/16/2013 09:38'!
codePointStorageSizeInBytes
	"Answer a class which will hold this 8, 16, or 32 bit code point or signal a domain error"

	(codePoint < 0)
	ifTrue: [ DomainError signal: 'Unicode code points must be non-negative' ].
	
	(codePoint <= 16rFF)
	ifTrue: [ ^ 1 ].
	
	(codePoint <= 16rFFFF)
	ifTrue: [ ^ 2 ].
	
	(codePoint <= 16rFFFFFFFF)
	ifTrue: [ ^4 ].
	
	DomainError signal: 'Unicode code points must fit within a 32 bit range'! !

!UniChar methodsFor: 'accessing' stamp: 'jmv 5/5/2014 22:41'!
icon

	^UniForms formForCodePoint: codePoint! !

!UniChar methodsFor: 'accessing' stamp: 'KenD 4/17/2013 16:27'!
iso8859s15Code
"Not really..."
	^codePoint < 256 ifTrue: [ codePoint ] ifFalse: [ nil ] "@@FIXME: Bogus!!!!@@"! !

!UniChar methodsFor: 'accessing' stamp: 'KenD 9/9/2016 12:06:08'!
numericValue

	^codePoint! !

!UniChar methodsFor: 'accessing' stamp: 'KenD 2/17/2013 17:18'!
unicodeCodePoint

	^self codePoint! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/11/2013 09:52'!
generalCategory

	"Answer name of category code"
	^ PropertyNames at: (self generalCategoryCode)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/13/2013 13:30'!
generalCategoryCode

	(self isCJKIdeograph)
	ifTrue: [ ^ Lo bitAnd: (ID bitShift: 16) ]
	ifFalse: [ ^(GeneralCategory at: codePoint ifAbsent: [ Cn ]) bitAnd: 16r00FFFF]! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 19:59'!
hasTagCombiningMark

	^ (self lineBreakCategoryCode = CM)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 19:59'!
hasTagConnectorPunctuation

	^ (self generalCategoryCode = CP)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/7/2013 19:43'!
hasTagControl

	^ (self generalCategoryCode = Cc)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:00'!
hasTagDecimalNumber

	^ (self generalCategoryCode = Nd)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:00'!
hasTagEnclosingMark

	^ (self generalCategoryCode = Me)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:00'!
hasTagFormat

	^ (self generalCategoryCode = Cf)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:01'!
hasTagGlue

	^ (self lineBreakCategoryCode = GL)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/21/2013 08:49'!
hasTagInLVT
	"Hangul Jamo
		JL -> L     Leading
		JV -> V    Vowel
		JT -> T    Trailing
		H2 ->  LV    Syllable

	"

	^ { H2. H3. JL. JV.  JT. } includes: (self lineBreakCategoryCode)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:01'!
hasTagLineSeparator

	^ (self generalCategoryCode = Zl)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 19:57'!
hasTagLowercase

	^ (self generalCategoryCode = Ll)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:01'!
hasTagNonspacingMark

	^ (self generalCategoryCode = Mn)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:01'!
hasTagOtherNumber

	^ (self generalCategoryCode = No)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:01'!
hasTagParagraphSeparator

	^ (self generalCategoryCode = Zp)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:02'!
hasTagSpaceSeparator

	^ (self generalCategoryCode = Zs)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:03'!
hasTagSpacingMark

	^ (self generalCategoryCode = Mc)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:03'!
hasTagSurrogate

	^ (self generalCategoryCode = Cs)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:03'!
hasTagTitlecase

	^ (self generalCategoryCode = Lt)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:03'!
hasTagUppercase

	^ (self generalCategoryCode = Lu)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 13:10'!
hasTagWordALetter
	"Word Property"

	^ self isLetter! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 13:53'!
hasTagWordExtend
	"Word Property"

	^ (self generalCategoryCode = Mn) or: [self generalCategoryCode = Mc]
! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 13:27'!
hasTagWordExtendedNumLet
	"Word Property.  Nota Bene: Not  CR | LF"

   ^ #(	16r005F.     " LOW LINE"
		16r203F.	"UNDERTIE..CHARACTER TIE"
		16r2040.	 "UNDERTIE..CHARACTER TIE"
		16r2054.	" INVERTED UNDERTIE"
		16rFE33.	"PRESENTATION FORM FOR VERTICAL LOW LINE"
		16rFE34.   "PRESENTATION FORM FOR VERTICAL WAVY LOW LINE"
		16rFE4D. 16rFE4E.	 "DASHED LOW LINE"
		16rFE4F.	"WAVY LOW LINE"
		16rFF3F.	"FULLWIDTH LOW LINE"
	) includes: codePoint
! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 20:03'!
hasTagWordFormat
	"Word Property"

	^ (self generalCategoryCode = Cf) 
! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 14:21'!
hasTagWordKatakana
	"Word Property"

	"@@FIXME: use a faster lookup/test"
	( #( 16r309B. 16r309C. 16r30A0. 
		16r30FC. 16r30FD. 16r30FE.
		16r30FF. 16rFF70. 16r1B000. ) includes: codePoint)
	ifTrue: [ ^true ].

	((16r3031 to: 16r3035) includes: codePoint) ifTrue: [ ^true ].
	((16r30A1 to: 16r30FA) includes: codePoint) ifTrue: [ ^true ].
	((16r31F0 to: 16r31FF) includes: codePoint) ifTrue: [ ^true ].
	((16r32D0 to: 16r32FE) includes: codePoint) ifTrue: [ ^true ].
	((16r3300 to: 16r3357) includes: codePoint) ifTrue: [ ^true ].
	((16rFF66 to: 16rFF6F) includes: codePoint) ifTrue: [ ^true ].
	((16rFF71 to: 16rFF9D) includes: codePoint) ifTrue: [ ^true ].

	^false! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 13:48'!
hasTagWordMinLetter
	"Word Property"

   ^ #(	16r003A.	"COLON"
		16r00B7.	"MIDDLE DOT"
		16r0387.	"GREEK ANO TELEIA"
		16r05F4.	"HEBREW PUNCTUATION GERSHAYIM"
		16r2027.	"HYPHENATION POINT"
		16rFE13.	"PRESENTATION FORM FOR VERTICAL COLON"
		16rFE55.	"SMALL COLON"
		16rFF1A.	"FULLWIDTH COLON"
	) includes: codePoint
! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 13:46'!
hasTagWordMinNum
	"Word Property"

   ^ #(	16r002C.	"COMMA"
		16r003B .	"SEMICOLON"
		16r037E.	"GREEK QUESTION MARK"
		16r0589.	"ARMENIAN FULL STOP"
		16r060C.	"ARABIC COMMA"
		16r060D.	"ARABIC DATE SEPARATOR"
		16r066C.	"ARABIC THOUSANDS SEPARATOR"
		16r07F8.	"NKO COMMA"
		16r2044.	"FRACTION SLASH"
		16rFE10.	"PRESENTATION FORM FOR VERTICAL COMMA"
		16rFE14.	"PRESENTATION FORM FOR VERTICAL SEMICOLON"
		16rFE50.	"SMALL COMMA"
		16rFE54.	"SMALL SEMICOLON"
		16rFF0C.	"FULLWIDTH COMMA"
		16rFF1B.	"FULLWIDTH SEMICOLON"
	) includes: codePoint
! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 13:42'!
hasTagWordMinNumLet
	"Word Property"

   ^ #(	16r0027.	"APOSTROPHE"
		16r002E.	"FULL STOP"
		16r2018.	"LEFT SINGLE QUOTATION MARK"
		16r2019.	"RIGHT SINGLE QUOTATION MARK"
		16r2024.	"ONE DOT LEADER"
		16rFE52.	"SMALL FULL STOP"
		16rFF07.	"FULLWIDTH APOSTROPHE"
		16rFF0E.	"FULLWIDTH FULL STOP"
	) includes: codePoint
! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 13:28'!
hasTagWordNewline
	"Word Property.  Nota Bene: Not  CR | LF"

   ^ #( 16r000B.  "Control-B"
	    16r000C.  "Control-C"
	    16r0085 . "Control-85"
	    16r2028.  "Line Separator"
	    16r2029 . "Parageaph Separator"
	) includes: codePoint
! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 17:40'!
hasTagWordNumeric
	"Word Property"

	 (16r066B = codePoint) ifTrue: [ ^true ].  "ARABIC DECIMAL SEPARATOR"
	^ ((self generalCategoryCode bitAnd: NumberBit) = NumberBit) 
! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/20/2013 10:21'!
hasTagWordRegionlIndicator
	"Word Property"

	^ self isRegionalIndicator
! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/16/2013 18:58'!
isCJKIdeograph

	(codePoint between: 16r2E80 and: 16r303F) ifTrue: [ ^true ]. "CJK Ideographic"
	(codePoint between:16r3300 and: 16rA4CF) ifTrue: [ ^true ]. "CJK Compatibility + Extensions A+"
	(codePoint between: 16rF900 and: 16rFAFF) ifTrue: [ ^true ].
	(codePoint between: 16rFE30 and: 16rFE4F) ifTrue: [ ^ true ].  "CJK Compatibility Forms"
	(codePoint between:16r20000 and: 16r2A6DF) ifTrue: [ ^true ].  "CJK Unified Ideographs Extension B"
	(codePoint between:16r2A700 and: 16r2B81F) ifTrue: [ ^true ]. "CJK Unified Ideographs Extension C +  D"
	(codePoint between:16r2F800 and: 16r2FA1F) ifTrue: [ ^true ]. "CJK Compatibility Ideographs Supplement"
	
	^ false! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 09:34'!
isCasedLetter

	^ (self generalCategoryCode  bitAnd: CasedLetterBit) = CasedLetterBit! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/19/2013 18:24'!
isDigit

	^ self isNumberChar! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/21/2013 17:20'!
isFormattingMark

	^ ((self generalCategoryCode) = Cf)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/19/2013 18:50'!
isGenerallyValidInIdentifiers
	"Answer if generally valid Smalltalk identifier"
	
	"Can c be part of an identifier? (unary or keyword selector, or variable name)
	Warning: Does not account for the fact that some classes could redefine 
	#allowUnderscoreSelectors"
	^self isAlphaNumeric or: [ self  = $_ and: [ Preferences allowUnderscoreSelectors ]]! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/21/2013 09:35'!
isHangulJamo

	^ self hasTagInLVT ! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 19:09'!
isLetter

	^ (((self generalCategoryCode) bitAnd: LetterBit) = LetterBit)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/28/2013 16:45'!
isLineSeparator
	"Answer true if Unicode Line Separator OR Smalltalk Line Separator"
	"Distinguish: isSeparator"
	
	^ (  "Unicode:  NextLine, LineSeparator, ParagraphSeparator"
 		#( 16r0085 16r2028 16r2029 ) includes: codePoint)
		"Smalltalk:  LineFeed CarriageReturn FormFeed"
		 	or: [(self codePoint < 16rFF) and: [self asCharacter isLineSeparator]] ! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/7/2013 19:49'!
isLowercase

	^ self hasTagLowercase! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 19:09'!
isMark

	^ (((self generalCategoryCode) bitAnd: MarkBit) = MarkBit)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 19:09'!
isNumberChar

	^ (((self generalCategoryCode) bitAnd: NumberBit) = NumberBit)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 19:09'!
isOtherControl

	^ (((self generalCategoryCode) bitAnd: ControlBit) = ControlBit)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 19:09'!
isPunctuation

	^ (((self generalCategoryCode) bitAnd: PunctuationBit) = PunctuationBit)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/20/2013 10:16'!
isRegionalIndicator

	^ (codePoint between: 16r1F1E6 and: 16r1F1FF)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/28/2013 13:43'!
isSeparator
	"Answer true if Unicode Separator OR Smalltalk Separator"

	^ (((self generalCategoryCode) bitAnd: SeparatorBit) = SeparatorBit)
		"LF, FF, Space, Tab, CR"
		or: [codePoint = 16r0085] "NextLine"
		or:  [(self codePoint < 16rFF) and: [self asCharacter isSeparator]]
		
" Separator = Zl + Zp + Zs:

0020;SPACE;Zs;0;WS;;;;;N;;;;;
00A0;NO-BREAK SPACE;Zs;0;CS;<noBreak> 0020;;;;N;NON-BREAKING SPACE;;;;
1680;OGHAM SPACE MARK;Zs;0;WS;;;;;N;;;;;
180E;MONGOLIAN VOWEL SEPARATOR;Zs;0;WS;;;;;N;;;;;
2000;EN QUAD;Zs;0;WS;2002;;;;N;;;;;
2001;EM QUAD;Zs;0;WS;2003;;;;N;;;;;
2002;EN SPACE;Zs;0;WS;<compat> 0020;;;;N;;;;;
2003;EM SPACE;Zs;0;WS;<compat> 0020;;;;N;;;;;
2004;THREE-PER-EM SPACE;Zs;0;WS;<compat> 0020;;;;N;;;;;
2005;FOUR-PER-EM SPACE;Zs;0;WS;<compat> 0020;;;;N;;;;;
2006;SIX-PER-EM SPACE;Zs;0;WS;<compat> 0020;;;;N;;;;;
2007;FIGURE SPACE;Zs;0;WS;<noBreak> 0020;;;;N;;;;;
2008;PUNCTUATION SPACE;Zs;0;WS;<compat> 0020;;;;N;;;;;
2009;THIN SPACE;Zs;0;WS;<compat> 0020;;;;N;;;;;
200A;HAIR SPACE;Zs;0;WS;<compat> 0020;;;;N;;;;;
202F;NARROW NO-BREAK SPACE;Zs;0;CS;<noBreak> 0020;;;;N;;;;;
205F;MEDIUM MATHEMATICAL SPACE;Zs;0;WS;<compat> 0020;;;;N;;;;;

3000;IDEOGRAPHIC SPACE;Zs;0;WS;<wide> 0020;;;;N;;;;;

2028;LINE SEPARATOR;Zl;0;WS;;;;;N;;;;;

2029;PARAGRAPH SEPARATOR;Zp;0;B;;;;;N;;;;;

***Nota Bene***=== 
**NOT** Classed as Separators by Unicode General Property:

0009;<control>;Cc;0;S;;;;;N;CHARACTER TABULATION (HT);;;;
000A;<control>;Cc;0;B;;;;;N;LINE FEED (LF);;;;
000B;<control>;Cc;0;S;;;;;N;LINE TABULATION (VT);;;;
000C;<control>;Cc;0;WS;;;;;N;FORM FEED (FF);;;;
000D;<control>;Cc;0;B;;;;;N;CARRIAGE RETURN (CR);;;;

0085;<control>;Cc;0;B;;;;;N;NEXT LINE (NEL);;;;
==============================

"! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/18/2013 16:30'!
isSpace

	^ self hasTagSpaceSeparator ! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/17/2013 19:10'!
isSymbolGyph

	"We can't use #isSymbol without confusion with Smalltalk Symbols"
	^ (((self generalCategoryCode) bitAnd: SymbolBit) = SymbolBit)! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/7/2013 19:48'!
isUppercase

	^ self hasTagUppercase ! !

!UniChar methodsFor: 'properties' stamp: 'KenD 8/28/2016 15:06:21'!
isValidInIdentifiers
	"Answer if generally valid Smalltalk identifier"
	
	^self isGenerallyValidInIdentifiers ! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/11/2013 09:52'!
lineBreakCategory

	"Answer name of category code"
	| indexCode |
	indexCode :=  self lineBreakCategoryCode.
	(indexCode isZero)
	ifTrue: [ ^ #Unknown ]
	ifFalse: [ ^ LineBreakProperties at: indexCode ]! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/13/2013 13:31'!
lineBreakCategoryCode

	(self isCJKIdeograph)
	ifTrue: [ ^ ID ]
	ifFalse: [ ^ ((GeneralCategory at: codePoint ifAbsent: [ 0 ]) bitAnd: 16r00FF0000) bitShift: -16 ]! !

!UniChar methodsFor: 'properties' stamp: 'KenD 3/9/2013 16:11'!
lineBreakTableAt: row at: col
	"Answer the character specified"

	"See comments in UniChar class>>initializeLineBreakTable"
	
	^ (LineBreakTable at: row) at: col! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/16/2013 09:40'!
rangeInfo
	"Answer something about me: #( Category BlockName )"

(codePoint  between: 16r0000 and: 16r007F) ifTrue: [ ^ #( 'Latin 1' 'Basic Latin' )].
(codePoint  between: 16r0080 and: 16r00FF) ifTrue: [ ^ #( 'Latin 1' 'Latin-1 Supplement' )].

(codePoint between: 16r0100 and: 16r017F) ifTrue: [ ^ #( 'Latin Extended 1' 'Latin Extended-A' )].
(codePoint between: 16r0180 and: 16r024F) ifTrue: [ ^ #( 'Latin Extended 1' 'Latin Extended-B' )].
(codePoint between: 16r0250 and: 16r02AF) ifTrue: [ ^ #( 'Latin Extended 1' 'IPA Extensions' )].

(codePoint between: 16r02B0 and: 16r02FF) ifTrue: [ ^ #( 'Modifiers' 'Spacing Modifier Letters' )].
(codePoint between: 16r0300 and: 16r036F) ifTrue: [ ^ #( 'Modifiers' 'Combining Diacritical Marks' )].

(codePoint between: 16r0370 and: 16r03FF) ifTrue: [ ^ #( 'European Alphabetic 1' 'Greek and Coptic' )].
(codePoint between: 16r0400 and: 16r04FF) ifTrue: [ ^ #( 'European Alphabetic 1' 'Cyrillic' )].
(codePoint between: 16r0500 and: 16r052F) ifTrue: [ ^ #( 'European Alphabetic 1' 'Cyrillic Supplementary' )].
(codePoint between: 16r0530 and: 16r058F) ifTrue: [ ^ #( 'European Alphabetic 1' 'Armenian' )].

 ^ self rangeInfo2 "too many literals for 1 method"! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/16/2013 09:41'!
rangeInfo2
	"Answer something about me"

(codePoint between: 16r0590 and: 16r05FF) ifTrue: [ ^ #( 'Middle Eastern' 'Hebrew' )].
(codePoint between: 16r0600 and: 16r06FF) ifTrue: [ ^ #( 'Middle Eastern' 'Arabic' )].
(codePoint between: 16r0700 and: 16r074F) ifTrue: [ ^ #( 'Middle Eastern' 'Syriac' )].
(codePoint between: 16r0780 and: 16r07BF) ifTrue: [ ^ #( 'Middle Eastern' 'Thaana' )].

(codePoint between: 16r0900 and: 16r097F) ifTrue: [ ^ #( 'South Asian 1' 'Devanagari' )].
(codePoint between: 16r0980 and: 16r09FF) ifTrue: [ ^ #( 'South Asian 1' 'Bengali' )].
(codePoint between: 16r0A00 and: 16r0A7F) ifTrue: [ ^ #( 'South Asian 1' 'Gurmukhi' )].
(codePoint between: 16r0A80 and: 16r0AFF) ifTrue: [ ^ #( 'South Asian 1' 'Gujarati' )].
(codePoint between: 16r0B00 and: 16r0B7F) ifTrue: [ ^ #( 'South Asian 1' 'Oriya' )].
(codePoint between: 16r0B80 and: 16r0BFF) ifTrue: [ ^ #( 'South Asian 1' 'Tamil' )].
(codePoint between: 16r0C00 and: 16r0C7F) ifTrue: [ ^ #( 'South Asian 1' 'Telugu' )].
(codePoint between: 16r0C80 and: 16r0CFF) ifTrue: [ ^ #( 'South Asian 1' 'Kannada' )].
(codePoint between: 16r0D00 and: 16r0D7F) ifTrue: [ ^ #( 'South Asian 1' 'Malayalam' )].
(codePoint between: 16r0D80 and: 16r0DFF) ifTrue: [ ^ #( 'South Asian 1' 'Sinhala' )].

(codePoint between: 16r0E00 and: 16r0E7F) ifTrue: [ ^ #( 'Southeastern 1' 'Thai' )].
(codePoint between: 16r0E80 and: 16r0EFF) ifTrue: [ ^ #( 'Southeastern 1' 'Lao' )].

(codePoint between: 16r0F00 and: 16r0FFF) ifTrue: [ ^ #( 'South Asian 1' 'Tibetan' )].

(codePoint between: 16r1000 and: 16r109F) ifTrue: [ ^ #( 'Southeastern 1' 'Myanmar' )].

(codePoint between: 16r10A0 and: 16r10FF) ifTrue: [ ^ #( 'European Alphabetic 2' 'Georgian' )].

(codePoint between: 16r1100 and: 16r11FF) ifTrue: [ ^ #( 'Korean' 'Hangul Jamo' )].

(codePoint between: 16r1200 and: 16r137F) ifTrue: [ ^ #( 'Additional 1' 'Ethiopic' )].
(codePoint between: 16r13A0 and: 16r13FF) ifTrue: [ ^ #( 'Additional 1' 'Cherokee' )].
(codePoint between: 16r1400 and: 16r167F) ifTrue: [ ^ #( 'Additional 1' 'Unified Canadian Aboriginal Syllabics' )].

(codePoint between: 16r1680 and: 16r169F) ifTrue: [ ^ #( 'European Alphabetic 3' 'Ogham' )].
(codePoint between: 16r16A0 and: 16r16FF) ifTrue: [ ^ #( 'European Alphabetic 3' 'Runic' )].

(codePoint between: 16r1700 and: 16r171F) ifTrue: [ ^ #( 'Southeastern 2' 'Tagalog' )].
(codePoint between: 16r1720 and: 16r173F) ifTrue: [ ^ #( 'Southeastern 2' 'Hanunoo' )].
(codePoint between: 16r1740 and: 16r175F) ifTrue: [ ^ #( 'Southeastern 2' 'Buhid' )].
(codePoint between: 16r1760 and: 16r177F) ifTrue: [ ^ #( 'Southeastern 2' 'Tagbanwa' )].
(codePoint between: 16r1780 and: 16r17FF) ifTrue: [ ^ #( 'Southeastern 2' 'Khmer' )].

(codePoint between: 16r1800 and: 16r18AF) ifTrue: [ ^ #( 'Additional 2' 'Mongolian' )].

(codePoint between: 16r1E00 and: 16r1EFF) ifTrue: [ ^ #( 'European Alphabetic 4' 'Latin Extended Additional' )].
(codePoint between: 16r1F00 and: 16r1FFF) ifTrue: [ ^ #( 'European Alphabetic 4' 'Greek Extended' )].

(codePoint between: 16r2000 and: 16r206F) ifTrue: [ ^ #( 'Symbols 2' 'General Punctuation' )].
(codePoint between: 16r2070 and: 16r209F) ifTrue: [ ^ #( 'Symbols 2' 'Superscripts and Subscripts' )].
(codePoint between: 16r20A0 and: 16r20CF) ifTrue: [ ^ #( 'Symbols 2' 'Currency Symbols' )].
(codePoint between: 16r20D0 and: 16r20FF) ifTrue: [ ^ #( 'Symbols 2' 'Combining Diacritical Marks for Symbols' )].
(codePoint between: 16r2100 and: 16r214F) ifTrue: [ ^ #( 'Symbols 2' 'Letterlike Symbols' )].
(codePoint between: 16r2150 and: 16r218F) ifTrue: [ ^ #( 'Symbols 2' 'Number Forms' )].
(codePoint between: 16r2190 and: 16r21FF) ifTrue: [ ^ #( 'Symbols 2' 'Arrows' )].
(codePoint between: 16r2200 and: 16r22FF) ifTrue: [ ^ #( 'Symbols 2' 'Mathematical Operators' )].
(codePoint between: 16r2300 and: 16r23FF) ifTrue: [ ^ #( 'Symbols 2' 'Miscellaneous Technical' )].
(codePoint between: 16r2400 and: 16r243F) ifTrue: [ ^ #( 'Symbols 2' 'Control Pictures' )].
(codePoint between: 16r2440 and: 16r245F) ifTrue: [ ^ #( 'Symbols 2' 'Optical Character Recognition' )].
(codePoint between: 16r2460 and: 16r24FF) ifTrue: [ ^ #( 'Symbols 2' 'Enclosed Alphanumerics' )].
(codePoint between: 16r2500 and: 16r257F) ifTrue: [ ^ #( 'Symbols 2' 'Box Drawing' )].
(codePoint between: 16r2580 and: 16r259F) ifTrue: [ ^ #( 'Symbols 2' 'Block Elements' )].
(codePoint between: 16r25A0 and: 16r25FF) ifTrue: [ ^ #( 'Symbols 2' 'Geometric Shapes' )].
(codePoint between: 16r2600 and: 16r26FF) ifTrue: [ ^ #( 'Symbols 2' 'Miscellaneous Symbols' )].
(codePoint between: 16r2700 and: 16r27BF) ifTrue: [ ^ #( 'Symbols 2' 'Dingbats' )].
(codePoint between: 16r27C0 and: 16r27EF) ifTrue: [ ^ #( 'Symbols 2' 'Miscellaneous Mathematical Symbols-A' )].
(codePoint between: 16r27F0 and: 16r27FF) ifTrue: [ ^ #( 'Symbols 2' 'Supplemental Arrows-A' )].
(codePoint between: 16r2800 and: 16r28FF) ifTrue: [ ^ #( 'Symbols 2' 'Braille Patterns' )].
(codePoint between: 16r2900 and: 16r297F) ifTrue: [ ^ #( 'Symbols 2' 'Supplemental Arrows-B' )].
(codePoint between: 16r2980 and: 16r29FF) ifTrue: [ ^ #( 'Symbols 2' 'Miscellaneous Mathematical Symbols-B' )].
(codePoint between: 16r2A00 and: 16r2AFF) ifTrue: [ ^ #( 'Symbols 2' 'Supplemental Mathematical Operators' )].

(codePoint between: 16r2E80 and: 16r2EFF) ifTrue: [ ^ #( 'CJK' 'CJK Radicals Supplement' )].
(codePoint between: 16r2F00 and: 16r2FDF) ifTrue: [ ^ #( 'CJK' 'Kangxi Radicals' )].
(codePoint between: 16r2FF0 and: 16r2FFF) ifTrue: [ ^ #( 'CJK' 'Ideographic Description Characters' )].
(codePoint between: 16r3000 and: 16r303F) ifTrue: [ ^ #( 'CJK' 'CJK Symbols and Punctuation' )].
(codePoint between: 16r3040 and: 16r309F) ifTrue: [ ^ #( 'CJK' 'Hiragana' )].
(codePoint between: 16r30A0 and: 16r30FF) ifTrue: [ ^ #( 'CJK' 'Katakana' )].
(codePoint between: 16r3100 and: 16r312F) ifTrue: [ ^ #( 'CJK' 'Bopomofo' )].
(codePoint between: 16r3130 and: 16r318F) ifTrue: [ ^ #( 'CJK' 'Hangul Compatibility Jamo' )].
(codePoint between: 16r3190 and: 16r319F) ifTrue: [ ^ #( 'CJK' 'Kanbun' )].
(codePoint between: 16r31A0 and: 16r31BF) ifTrue: [ ^ #( 'CJK' 'Bopomofo Extended' )].
(codePoint between: 16r31F0 and: 16r31FF) ifTrue: [ ^ #( 'CJK' 'Katakana Phonetic Extensions' )].
(codePoint between: 16r3200 and: 16r32FF) ifTrue: [ ^ #( 'CJK' 'Enclosed CJK Letters and Months' )].
(codePoint between: 16r3300 and: 16r33FF) ifTrue: [ ^ #( 'CJK' 'CJK Compatibility' )].
(codePoint between: 16r3400 and: 16r4DBF) ifTrue: [ ^ #( 'CJK' 'CJK Unified Ideographs Extension A' )].
(codePoint between: 16r4E00 and: 16r9FFF) ifTrue: [ ^ #( 'CJK' 'CJK Unified Ideographs' )].
(codePoint between: 16rA000 and: 16rA48F) ifTrue: [ ^ #( 'CJK' 'Yi Syllables' )].
(codePoint between: 16rA490 and: 16rA4CF) ifTrue: [ ^ #( 'CJK' 'Yi Radicals' )].

^self rangeInfo3 "too many literals for 1 method"! !

!UniChar methodsFor: 'properties' stamp: 'KenD 4/16/2013 09:41'!
rangeInfo3
	"Answer something about me"

(codePoint between: 16rAC00 and: 16rD7AF) ifTrue: [ ^ #( 'Korean' 'Hangul Syllables' )].

(codePoint between: 16rD800 and: 16rDB7F) ifTrue: [ ^ #( 'Special' 'High Surrogates' )].
(codePoint between: 16rDB80 and: 16rDBFF) ifTrue: [ ^ #( 'Special' 'High Private Use Surrogates' )].
(codePoint between: 16rDC00 and: 16rDFFF) ifTrue: [ ^ #( 'Special' 'Low Surrogates' )].
(codePoint between: 16rE000 and: 16rF8FF) ifTrue: [ ^ #( 'Special' 'Private Use Area' )].

(codePoint between: 16rF900 and: 16rFAFF) ifTrue: [ ^ #( 'CJK' 'CJK Compatibility Ideographs' )].

(codePoint between: 16rFB00 and: 16rFB4F) ifTrue: [ ^ #( 'Middle Eastern 2' 'Alphabetic Presentation Forms' )].
(codePoint between: 16rFB50 and: 16rFDFF) ifTrue: [ ^ #( 'Middle Eastern 2' 'Arabic Presentation Forms-A' )].

(codePoint between: 16rFE00 and: 16rFE0F) ifTrue: [ ^ #( 'Special' 'Variation Selectors' )].
(codePoint between: 16rFE20 and: 16rFE2F) ifTrue: [ ^ #( 'Special' 'Combining Half Marks' )].

(codePoint between: 16rFE30 and: 16rFE4F) ifTrue: [ ^ #( 'CJK' 'CJK Compatibility Forms' )].

(codePoint between: 16rFE50 and: 16rFE6F) ifTrue: [ ^ #( 'Symbol 3' 'Small Form Variants' )].

(codePoint between: 16rFE70 and: 16rFEFF) ifTrue: [ ^ #( 'Middle Eastern 3' 'Arabic Presentation Forms-B' )].

(codePoint between: 16rFF00 and: 16rFFEF) ifTrue: [ ^ #( 'Specials' 'Halfwidth and Fullwidth Forms' )].
(codePoint between: 16rFFF0 and: 16rFFFF) ifTrue: [ ^ #( 'Specials' 'Specials' )].

(codePoint between: 16r10300 and: 16r1032F) ifTrue: [ ^ #( 'European' 'Old Italic' )].
(codePoint between: 16r10330 and: 16r1034F) ifTrue: [ ^ #( 'European' 'Gothic' )].
(codePoint between: 16r10400 and: 16r1044F) ifTrue: [ ^ #( 'European' 'Deseret' )].

(codePoint between: 16r1D000 and: 16r1D0FF) ifTrue: [ ^ #( 'Symbols' 'Byzantine Musical Symbols' )].
(codePoint between: 16r1D100 and: 16r1D1FF) ifTrue: [ ^ #( 'Symbols' 'Musical Symbols' )].
(codePoint between: 16r1D400 and: 16r1D7FF) ifTrue: [ ^ #( 'Symbols' 'Mathematical Alphanumeric Symbols' )].

(codePoint between: 16r20000 and: 16r2A6DF) ifTrue: [ ^ #( 'CJK' 'CJK Unified Ideographs Extension B' )].
(codePoint between: 16r2F800 and: 16r2FA1F) ifTrue: [ ^ #( 'CJK' 'CJK Compatibility Ideographs Supplement' )].

(codePoint between: 16rE0000 and: 16rE007F) ifTrue: [ ^ #( 'Special' 'Tags' )].
(codePoint between: 16rF0000 and: 16rFFFFF) ifTrue: [ ^ #( 'Special' 'Supplementary Private Use Area-A' )].
(codePoint between: 16r100000 and: 16r10FFFF) ifTrue: [ ^ #( 'Special' 'Supplementary Private Use Area-B' )].

"Default: who knows, who cares"
^ #( 'Unassigned' 'Unknown' )
! !

!UniChar methodsFor: 'printing' stamp: 'KenD 1/20/2019 17:29:10'!
printOn: aStream
	"Display for humans"

	(codePoint < 16rFF) "Fits in a byte?"
	ifTrue: [
		aStream nextPut: (Character codePoint: codePoint)
	]
	ifFalse: [ "Do what Cuis does as with String>>fromUtf8: "
		aStream nextPutAll: '&#'.
		codePoint printOn: aStream base: 10.
		aStream nextPut: $; 
	]! !

!UniChar methodsFor: 'printing' stamp: 'KenD 3/18/2013 21:33'!
storeOn: aStream
	"Character literals are preceded by '$'."

	"store to be read back by computer"
	(codePoint <= 16rFF)
	ifTrue: [ aStream nextPut: $$; nextPut: codePoint asCharacter] "Character literal"
	ifFalse: [aStream nextPutAll: '(UniChar fromCodePoint: '.
			aStream nextPutAll: codePoint hex.
			aStream nextPut: $). ]! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:23'!
AI
	^AL! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:07'!
AL
	^AL! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:25'!
B2
	^B2! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:08'!
BA
	^BA! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:08'!
BB
	^BB! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:09'!
BK
	^BK! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:10'!
CB
	^CB! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:26'!
CJ
	^CJ! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:05'!
CL
	^CL! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:08'!
CM
	^CM! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:06'!
CP
	^CP! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:09'!
CR
	^CR! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:00'!
Cc
	^Cc! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:00'!
Cf
	^Cf! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:00'!
Cn
	^Cn! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:00'!
Co
	^Co! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:00'!
Cs
	^Cs! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:06'!
EX
	^EX! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:06'!
GL
	^GL! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:08'!
H2
	^H2! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:09'!
H3
	^H3! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:07'!
HL
	^HL! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:08'!
HY
	^HY! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:07'!
ID
	^ID! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:07'!
IN
	^IN! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:06'!
IS
	^IS! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:09'!
JL
	^JL! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:09'!
JT
	^JT! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:09'!
JV
	^JV! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:09'!
LF
	^LF! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:00'!
Ll
	^Ll! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:00'!
Lm
	^Lm! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:00'!
Lo
	^Lo! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:01'!
Lt
	^Lt! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:01'!
Lu
	^Lu! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:01'!
Mc
	^Mc! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:01'!
Me
	^Me! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:01'!
Mn
	^Mn! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:10'!
NL
	^NL! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:06'!
NS
	^NS! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:07'!
NU
	^NU! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:55'!
Nd
	^Nd! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:55'!
Nl
	^Nl! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:55'!
No
	^No! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:05'!
OP
	^OP! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:07'!
PO
	^PO! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:07'!
PR
	^PR! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:55'!
Pc
	^Pc! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:55'!
Pd
	^Pd! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:56'!
Pe
	^Pe! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:56'!
Pf
	^Pf! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:56'!
Pi
	^Pi! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:56'!
Po
	^Po! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:56'!
Ps
	^Ps! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:06'!
QU
	^QU! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:09'!
RI
	^RI! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:24'!
SA
	^SA! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:09'!
SG
	^SG! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:10'!
SP
	^SP! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:06'!
SY
	^SY! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:56'!
Sc
	^Sc! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:56'!
Sk
	^Sk! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:56'!
Sm
	^Sm! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:56'!
So
	^So! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:08'!
WJ
	^WJ! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:05'!
XX
	^XX! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/9/2013 15:08'!
ZW
	^ZW! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:57'!
Zl
	^Zl! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:57'!
Zp
	^Zp! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/7/2013 17:57'!
Zs
	^Zs! !

!UniChar class methodsFor: 'private' stamp: 'KenD 4/17/2013 15:27'!
defaultBreakDisplayChar
	"Answer a character used to display (char|word|line) breaks in test code"
	^DefaultBreakChar ! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/11/2013 17:30'!
propNamesForCode: propCode
	
	| lineBreakProp lineBreakPropName generalPropName |
	generalPropName := PropertyNames at: (propCode bitAnd: 16r00FFFF).
	lineBreakProp := ((propCode bitAnd: 16r00FF0000) bitShift: -16).
	(lineBreakProp isZero) 
	ifTrue: [ lineBreakPropName := #Unknown]
	ifFalse: [ lineBreakPropName := LineBreakProperties at: lineBreakProp].

	^ { generalPropName.  lineBreakPropName }! !

!UniChar class methodsFor: 'private' stamp: 'KenD 3/13/2013 13:32'!
propStats
"
	UniChar propStats.
"

	| propCountsDict "countsDict" valueCounterProc |
	
	valueCounterProc :=
		[ :dict | | countDict |
			countDict := IdentityDictionary new.
			dict valuesDo: [ :val |
				countDict at: val
						   put: (1 + (countDict at: val ifAbsent: [0]))
		].
		countDict
	].

	"Count shared codePoints"
	propCountsDict := valueCounterProc value: GeneralCategory.
	
	Transcript newLine .
	propCountsDict keysAndValuesDo: [ :key :count |
		(count > 900)
		ifTrue: [
				Transcript newLine.
				Transcript show: 'Count: ', 
								count asString , 
								' PropCode: ', 
								key hex,
								'  ', 
								((UniChar propNamesForCode: key) asString).
		]
	].
	Transcript newLine .

	"Count number of times a codepoint is shared with the same count"
"
	countsDict := valueCounterProc value: propCountsDict.
	
	^ { propCountsDict. countsDict. }
"
	^ propCountsDict 
			! !

!UniChar class methodsFor: 'private' stamp: 'KenD 2/24/2013 09:36'!
zeroCodePoints
	
	^ZeroCodePoints! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:36'!
arrowDown

	^ (31 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:37'!
arrowLeft

	^ (28 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:37'!
arrowRight

	^ (29 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:37'!
arrowUp

	^ (30 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:37'!
backspace
	"Answer the Character representing a backspace."

	^ (8 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:38'!
crCharacter
	"Answer the Character representing a carriage return."

	^ (13 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:38'!
delete

	^ (127 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:38'!
end

	^ (4 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:39'!
enter
	"Answer the Character representing enter."

	^ (3 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:39'!
escape
	"Answer the ASCII ESC character"

	^ (27 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:46'!
euro
	"The Euro currency sign, that E with two dashes.
	Note that this differs from class Character, as
	Cuis uses ISO Latin 9 (ISO 8859-15) character encoding."

	^ (16r20AC asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:39'!
home

	^ (1 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:40'!
insert

	^ (5 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:40'!
lfCharacter
	"Answer the Character representing a linefeed."

	^ (10 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 3/24/2013 15:37'!
lineBreakNameAt: anIndex

	^ LineBreakNames at: anIndex! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 3/27/2013 21:18'!
lineSeparator
	"Answer Unicode LS"

	^ (2028 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:40'!
nbsp
	"non-breakable space."

	^ (202 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:41'!
newLineCharacter
	"Answer the Character representing a newLine, that is, a linefeed.
	This should be the only method in the system that knows about this detail.
	Everybody else should eventually ask us."

	^ self lfCharacter! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:41'!
newPage
	"Answer the Character representing a form feed."

	^ (12 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:41'!
null
	"Answer the null Character."

	^ (0 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:42'!
pageDown

	^ (12 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:42'!
pageUp

	^ (11 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 3/27/2013 21:18'!
paragraphSeparator
	"Answer Unicode PS"

	^ (2029 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:42'!
space
	"Answer the Character representing a space."

	^ (32 asUniChar)! !

!UniChar class methodsFor: 'accessing untypeable chars' stamp: 'KenD 2/18/2013 20:42'!
tab
	"Answer the Character representing a tab."

	^ (9 asUniChar)! !

!UniChar class methodsFor: 'as yet unclassified' stamp: 'KenD 4/7/2013 09:30'!
defaultFontClass
	^UniForms! !

!UniChar class methodsFor: 'instance creation' stamp: 'KenD 4/15/2013 20:55'!
fromCodePoint: aCodePoint
	"Answer a new Unicode character to represent aCodePoint"
	
	^ (self new initialize; privateSetCodePoint: aCodePoint; yourself)
! !

!UniChar class methodsFor: 'instance creation' stamp: 'KenD 3/11/2013 09:49'!
value: aCodePoint

	^self fromCodePoint: aCodePoint asNumber! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 3/7/2013 08:22'!
initZeroCodePoints
	"Script digit ranges starting at zero"

	ZeroCodePoints := #(
       16r0030                "DIGIT ZERO"
       16r0660                "ARABIC-INDIC DIGIT ZERO"
       16r06F0                "EXTENDED ARABIC-INDIC DIGIT ZERO"
       16r07C0                "NKO DIGIT ZERO"
       16r0966                "DEVANAGARI DIGIT ZERO"
       16r09E6                "BENGALI DIGIT ZERO"
       16r0A66                "GURMUKHI DIGIT ZERO"
       16r0AE6                "GUJARATI DIGIT ZERO"
       16r0B66                "ORIYA DIGIT ZERO"
       16r0BE6                "TAMIL DIGIT ZERO"
       16r0C66                "TELUGU DIGIT ZERO"
       16r0CE6                "KANNADA DIGIT ZERO"
       16r0D66                "MALAYALAM DIGIT ZERO"
       16r0E50                "THAI DIGIT ZERO"
       16r0ED0                "LAO DIGIT ZERO"
       16r0F20                "TIBETAN DIGIT ZERO"
       16r1040                "MYANMAR DIGIT ZERO"
       16r1090                "MYANMAR SHAN DIGIT ZERO"
       16r17E0                "KHMER DIGIT ZERO"
       16r1810                "MONGOLIAN DIGIT ZERO"
       16r1946                "LIMBU DIGIT ZERO"
       16r19D0                "NEW TAI LUE DIGIT ZERO"
       16r1A80                "TAI THAM HORA DIGIT ZERO"
       16r1A90                "TAI THAM THAM DIGIT ZERO"
       16r1B50                "BALINESE DIGIT ZERO"
       16r1BB0                "SUNDANESE DIGIT ZERO"
       16r1C40                "LEPCHA DIGIT ZERO"
       16r1C50                "OL CHIKI DIGIT ZERO"
       16rA620                "VAI DIGIT ZERO"
       16rA8D0                "SAURASHTRA DIGIT ZERO"
       16rA900                "KAYAH LI DIGIT ZERO"
       16rA9D0                "JAVANESE DIGIT ZERO"
       16rAA50                "CHAM DIGIT ZERO"
       16rABF0                "MEETEI MAYEK DIGIT ZERO"
       16rFF10                "FULLWIDTH DIGIT ZERO"
       16r104A0               "OSMANYA DIGIT ZERO"
       16r11066               "BRAHMI DIGIT ZERO"
       16r1D7CE               "MATHEMATICAL BOLD DIGIT ZERO"
       16r1D7D8               "MATHEMATICAL DOUBLE-STRUCK DIGIT ZERO"
       16r1D7E2               "MATHEMATICAL SANS-SERIF DIGIT ZERO"
       16r1D7EC               "MATHEMATICAL SANS-SERIF BOLD DIGIT ZERO"
       16r1D7F6               "MATHEMATICAL MONOSPACE DIGIT ZERO"
  ).
! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 4/21/2013 10:56'!
initialize
"
	UniChar initialize.
"
	SmalltalkSpecialChars := '+-/\*~<>=@,%|&?!!' asUniString.
	DefaultBreakChar := 16r23CF asUniChar. "Use EJECT char to show (char|word|line) break"
	self initZeroCodePoints.
	self initializeGeneralPropertyEnums.
	self initializeGeneralCharacterProperties.
	self initializeCaseMappings. 
	self initializeLineBreakProperties. "Must follow initializeGeneralCharacterProperties"
	self initializeLineBreakTable.
	self initializeHangulJamoLVT.
	
	
	! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 6/1/2016 15:26'!
initializeCaseMappings
	"UniChar initializeCaseMappings"
 	
  	ToCasefold 	:= IdentityDictionary new.
	ToUpper 		:= IdentityDictionary new.
	ToLower 		:= IdentityDictionary new.
	
  	(self package fullFileName asFileEntry parent pathName, '/', 'CaseFolding.txt') asFileEntry 
		readStreamDo: [ :fileStream |
			self parseCaseMappingFrom: fileStream ].
"
@@FIXME: download using ProgressBarMorph

	UIManager default informUserDuring: [:bar|
		| stream |
		bar value: 'Downloading Unicode data'.
		stream := HTTPClient httpGet: 'http://www.unicode.org/Public/UNIDATA/CaseFolding.txt'.
		(stream isKindOf: RWBinaryOrTextStream) ifFalse:[^self error: 'Download failed'].
		stream reset.
		bar value: 'Updating Case Mappings'.
		self parseCaseMappingFrom: stream.
	]
".! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 6/1/2016 15:25'!
initializeGeneralCharacterProperties

  	(self package fullFileName asFileEntry parent pathName, '/', 'UnicodeData.txt') asFileEntry 
		readStreamDo: [ :fileStream |
			self parseGeneralPropertiesFrom: fileStream ].

	"@@FIXME: Download from  http://unicode.org/Public/UNIDATA/UnicodeData.txt "! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 4/16/2013 19:01'!
initializeGeneralPropertyEnums

	"16 Bits for general properties.  Upper 8 is Category"
	CasedLetterBit 	:= 1<<15.
	LetterBit 			:= 1<<14.
	MarkBit 			:= 1<<13.
	NumberBit 		:= 1<<12.
	PunctuationBit 	:= 1<<11.
	SymbolBit 			:= 1<<10 .
	SeparatorBit 		:= 1<<09.
	ControlBit 			:= 1<<08.
	
	"Lower 8 bits have value"

"	CasedLetter := Lu + Ll +  Lt.
	Letter 		:= Lu + Ll + Lt + Lm + Lo.
	Mark 		:= Mn + Mc + Me.
	Number 	:= Nd + Nl + No.
	Punctuation 	:= Pc + Pd + Ps + Pe + Pi + Pf + Po.
	Symbol 		:= Sm + Sc + Sk + So .
	Separator 	:= Zs + Zl + Zp.
	Control 		:= Cc + Cf + Cs + Co + Cn.
"
	Cn 	:= ControlBit.
 	Cc 	:= ControlBit + 1.
 	Cf 	:= ControlBit + 2.
 	Co 	:= ControlBit + 3.
 	Cs 	:= ControlBit + 4.
 	Ll 		:= CasedLetterBit + LetterBit + 1.
 	Lm 	:= LetterBit + 2.
 	Lo 	:= LetterBit + 3.
 	Lt 		:= CasedLetterBit + LetterBit + 4.
 	Lu 	:= CasedLetterBit + LetterBit + 5.
 	Mc 	:= MarkBit + 1.
 	Me 	:= MarkBit + 2.
 	Mn 	:= MarkBit + 3.
 	Nd 	:= NumberBit + 1.
 	Nl 		:= NumberBit + 2.
 	No 	:= NumberBit + 3.
 	Pc 	:= PunctuationBit + 1.
 	Pd 	:= PunctuationBit + 2.
 	Pe 	:= PunctuationBit + 3.
 	Pf 		:= PunctuationBit + 4.
 	Pi 		:= PunctuationBit + 5.
 	Po 	:= PunctuationBit + 6.
 	Ps 	:= PunctuationBit + 7.
 	Sc 	:= SymbolBit + 1.
 	Sk 	:= SymbolBit + 2.
 	Sm 	:= SymbolBit + 3.
 	So 	:= SymbolBit + 4.
 	Zl 		:= SeparatorBit + 1.
 	Zp 	:= SeparatorBit + 2.
 	Zs 	:= SeparatorBit + 3.

	
	PropertyNames := Dictionary new: 30.
	PropertyNames at: Cn 	put: #Unassigned.
	PropertyNames at: Cc 	put: #Control.
 	PropertyNames at: Cf 	put: #Format.
 	PropertyNames at: Co 	put: #PrivateUse.
 	PropertyNames at: Cs 	put: #Surrogate.
 	PropertyNames at: Ll 	put: #LowercaseLetter .
 	PropertyNames at: Lm 	put: #ModifierLetter.
 	PropertyNames at: Lo 	put: #OtherLetter.
 	PropertyNames at: Lt 	put: #TitlecaseLetter..
 	PropertyNames at: Lu 	put: #UppercaseLetter .
 	PropertyNames at: Mc 	put: #SpacingMark..
 	PropertyNames at: Me 	put: #EnclosingMark.
 	PropertyNames at: Mn 	put: #NonspacingMark.
 	PropertyNames at: Nd 	put: #DecimalNumber.
 	PropertyNames at: Nl 	put: #LetterNumber.
 	PropertyNames at: No 	put: #OtherNumber.
 	PropertyNames at: Pc 	put: #ConnectorPunctuation.
 	PropertyNames at: Pd 	put: #DashPunctuation.
 	PropertyNames at: Pe 	put: #ClosePunctuation.
 	PropertyNames at: Pf 	put: #FinalPunctuation.
 	PropertyNames at: Pi 	put: #InitialPunctuation.
 	PropertyNames at: Po 	put: #OtherPunctuation.
 	PropertyNames at: Ps 	put: #OpenPunctuation.
 	PropertyNames at: Sc 	put: #CurrencySymbol.
 	PropertyNames at: Sk 	put: #ModifierSymbol.
 	PropertyNames at: Sm 	put: #MathSymbol.
 	PropertyNames at: So 	put: #OtherSymbol.
 	PropertyNames at: Zl 	put: #LineSeparator.
 	PropertyNames at: Zp 	put: #ParagraphSeparator.
 	PropertyNames at: Zs 	put: #SpaceSeparator.
	! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 4/21/2013 11:51'!
initializeHangulJamoLVT
	"Used for UniString  Grapheme cluster scanning.'
	See UniChar>>nextLVTStateFromState:"
	
	"Note table 1c in  Unicode Annex #29: Unicode Text Segmentation"

	"Indices into Hangul Jamo Syllable LVT state table"
	L		:= 1.
	V	 	:= 2.
	LV		:= 3.
	LVT	:= 4.
	T 		:= 5.
	"State x Input -> NextState"
	LVTStateVec := Array new: 5.
	LVTStateVec at: L		put: {L. V. LV. LVT. T.}. "equals START"
	LVTStateVec at: V		put: {0. V.  0.    0.   T.}.
	LVTStateVec at: LV		put: {0. V.  0.    0.   T.}.
	LVTStateVec at: LVT	put: {0. 0.   0.    0.   T.}.
	LVTStateVec at: T		put: {0. 0.   0.    0.   T.}.
	" 0 ->Out == EXIT "

	LVTStateMap := Array new: (LineBreakProperties size) withAll: 0.
	LVTStateMap at: H2 put: LV.	
	LVTStateMap at: H3 put: LVT.
	LVTStateMap at: JL put: L.
	LVTStateMap at: JV put: V.
	LVTStateMap at: JT put: T.
! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 6/1/2016 15:26'!
initializeLineBreakProperties
"
	UniChar initializeLineBreakProperties.
"
	"Values in byte 16r00FF0000"
	LineBreakProperties := Array new: 40.
	LineBreakTypeNames := #( BreakAfter DontbreakAfter 
									BreakBefore DontbreakBefore
									BreakForPair DontbreakForPair  ).
	AL := 1.
	LineBreakProperties at: AL put: #Alphabetic . "DontbreakForPair"
	B2 := 2.
	LineBreakProperties at: B2 put: #BeforeAndAfter . "BreakBefore | DontbreakForPair | BreakAfter"
	BA := 3.
	LineBreakProperties at: BA put: #BreakAfter . "BreakAfter"
	BB := 4.
	LineBreakProperties at: BB put: #BreakBefore . "BreakBefore"
	BK := 5.
	LineBreakProperties at: BK put: #MandatoryBreak . "BreakAfter"
	CB := 6.
	LineBreakProperties at: CB put: #ContingentBreak . "BreakBefore | BreakAfter"
	CL := 7.
	LineBreakProperties at: CL put: #ClosePunctuation . "DontbreakBefore"
	CP := 8.
	LineBreakProperties at: CP put: #CloseParenthesis . "DontbreakBefore"
	CM := 9.
	LineBreakProperties at: CM put: #CombiningMark . "DontbreakBefore"
	CR := 10.
	LineBreakProperties at: CR put: #CarrageReturn . "Always Break unless followed by LF"
	EX := 11.
	LineBreakProperties at: EX put: #ExclamationInterrogation . "DontbreakBefore"
	GL := 12.
	LineBreakProperties at: GL put: #Glue . "DontbreakBefore | DontbreakAfter"
	H2 := 13.
	LineBreakProperties at: H2 put: #HangulLV . "BreakBefore | BreakAfter"
	H3 := 14.
	LineBreakProperties at: H3 put: #HangulLVT . "BreakBefore | BreakAfter"
	HL := 15.
	LineBreakProperties at: HL put: #HebrewLetter . "DontbreakBefore"
	HY := 16.
	LineBreakProperties at: HY put: #Hyphen . "DontbreakBefore"
	ID := 17.
	LineBreakProperties at: ID put: #Ideographic . "BreakBefore | BreakAfter"
	IN := 18.
	LineBreakProperties at: IN put: #InseparableCharacters . "DontbreakForPair"
	IS := 19.
	LineBreakProperties at: IS put: #InfixNumericSeparator . "DontbreakBefore"
	JL := 20.
	LineBreakProperties at: JL put: #HangulLJamo . "BreakBefore"
	JT := 21.
	LineBreakProperties at: JT put: #HangulTJamo . "BreakAfter"
	JV := 22.
	LineBreakProperties at: JV put: #HangulVJamo . "DontbreakBefore | DontbreakAfter"
	LF := 23.
	LineBreakProperties at: LF put: #LineFeed . "Always Break unless followed by CR"
	NL := 24.
	LineBreakProperties at: NL put: #NextLine . "BreakAfter"
	NS := 25.
	LineBreakProperties at: NS put: #NonStarters . "DontbreakBefore"
	NU := 26.
	LineBreakProperties at: NU put: #Numeric . "DontbreakForPair"
	OP := 27.
	LineBreakProperties at: OP put: #OpenPunctuation . "DontbreakAfter"
	PO := 28.
	LineBreakProperties at: PO put: #PostfixNumeric . "DontbreakBefore"
	PR := 29.
	LineBreakProperties at: PR put: #PrefixNumeric . "DontbreakAfter"
	QU := 30.
	LineBreakProperties at: QU put: #Quotation . "DontbreakBefore | DontbreakAfter"
	SP := 31.
	LineBreakProperties at: SP put: #Space . "BreakAfter"
	SY := 32.
	LineBreakProperties at: SY put: #Symbols . "BreakAfter"
	WJ := 33.
	LineBreakProperties at: WJ put: #WordJoiner . "DontbreakBefore | DontbreakAfter"
	ZW := 34.
	LineBreakProperties at: ZW put: #ZeroWidthSpace . "BreakAfter"
	RI := 35.
	LineBreakProperties at: RI put: #RegionalIndicator . "BreakBefore | DontbreakForPair | BreakAfter"
	AI := 36.
	LineBreakProperties at: AI put: #AlphaOrIdeograph . "Ambiguous; treated the same"
	XX := 37.
	LineBreakProperties at: XX put: #Unassigned . "Who knows? Who cares?"
	SA := 38.
	LineBreakProperties at: SA put: #SoutheastAsian . "Complex Context Dependent"
	CJ := 39.
	LineBreakProperties at: CJ put: #ConditionalJapaneseStarted .

	SG := 40.
	LineBreakProperties at: SG put: #Surrogate . "DontbreakForPair"

	(self package fullFileName asFileEntry parent pathName, '/', 'LineBreak.txt')
		 asFileEntry readStreamDo: [ :fileStream |	
				self parseLineBreakPropertiesFrom: fileStream
		].

! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 3/29/2013 16:56'!
initializeLineBreakTable
	"From  Unicode Standard Annex #14: Unicode Line Breaking Algorithm"

	LineBreakNames := IdentityDictionary new: 2.
	LineBreakNames at: $x put: #BreakProhibited.
	LineBreakNames at: $0 put: #BreakAllowed.

	LineBreakTable := Array new: 40.
	LineBreakTable at: AL put: '󪧤�0鬃鬃鬃00鬃0鬃000鬃鬃�00鬃鬃�0鬃鬃x'.
	LineBreakTable at: B2 put: '0鬃0�0鬃鬃鬃000�00�000鬃�0000鬃鬃�0000讀'.
	LineBreakTable at: BA put: '00󪧤鬃鬃�0000�00�000鬃�0000鬃鬃�0000讀'.
	LineBreakTable at: BB put: '鬃鬃�0鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃讀'.
	LineBreakTable at: BK put: '000000000000000000000000000000000000000x'.
	LineBreakTable at: CB put: '0000�0鬃鬃鬃000000�000鬃00000鬃鬃�00000x'.
	LineBreakTable at: CL put: '00󪧤鬃鬃鬃000�00�000鬃�0000鬃鬃�0000讀'.
	LineBreakTable at: CP put: '󪧤�0鬃鬃鬃00鬃00�000鬃鬃000鬃鬃�0鬃鬃x'.
	LineBreakTable at: CM put: '󪧤�0鬃鬃鬃00鬃0鬃000鬃鬃�00鬃鬃�0鬃鬃x'.
	LineBreakTable at: CR put: '0000000000000000000000�0000000000000000x'.
	LineBreakTable at: EX put: '00󪧤鬃鬃鬃000�00�000鬃�0000鬃鬃�0000讀'.
	LineBreakTable at: GL put: '鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃讀'.
	LineBreakTable at: H2 put: '00󪧤鬃鬃鬃000�0鬃0鬃鬃�00�0鬃鬃�0000讀'.
	LineBreakTable at: H3 put: '00󪧤鬃鬃鬃000�0鬃0�0鬃�00�0鬃鬃�0000讀'.
	LineBreakTable at: HL put: '󪧤�0鬃鬃鬃00鬃0鬃000鬃鬃�00鬃鬃�0鬃鬃x'.
	LineBreakTable at: HY put: '00󪧤鬃鬃�0000�00�000鬃鬃000鬃鬃�0000讀'.
	LineBreakTable at: ID put: '00󪧤鬃鬃鬃000�0鬃000鬃�00�0鬃鬃�0000讀'.
	LineBreakTable at: IN put: '00󪧤鬃鬃鬃000�0鬃000鬃�0000鬃鬃�0000讀'.
	LineBreakTable at: IS put: '󪧤�0鬃鬃鬃00鬃00�000鬃�0000鬃鬃�0鬃鬃x'.
	LineBreakTable at: JL put: '00󪧤鬃鬃鬃鬃0�0鬃�0鬃鬃00�0鬃鬃�0000讀'.
	LineBreakTable at: JT put: '00󪧤鬃鬃鬃000�0鬃0�0鬃�00�0鬃鬃�0000讀'.
	LineBreakTable at: JV put: '00󪧤鬃鬃鬃000�0鬃0鬃鬃�00�0鬃鬃�0000讀'.
	LineBreakTable at: LF put: '000000000000000000000000000000000000000x'.
	LineBreakTable at: NL put: '000000000000000000000000000000000000000x'.
	LineBreakTable at: NS put: '00󪧤鬃鬃鬃000�00�000鬃�0000鬃鬃�0000讀'.
	LineBreakTable at: NU put: '󪧤�0鬃鬃鬃00鬃0鬃000鬃鬃鬃鬃鬃鬃0鬃鬃x'.
	LineBreakTable at: OP put: '鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃讀'.
	LineBreakTable at: PO put: '󪧤�0鬃鬃鬃00鬃00�000鬃鬃000鬃鬃�0鬃鬃x'.
	LineBreakTable at: PR put: '󪧤�0鬃鬃鬃鬃鬃�0鬃鬃鬃鬃000鬃鬃�0鬃鬃x'.
	LineBreakTable at: QU put: '鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃讀'.
	LineBreakTable at: SP put: '0000�0鬃0鬃0000000�000鬃000000鬃鬃00000x'.
	LineBreakTable at: SY put: '00󪧤鬃鬃鬃000�00�000鬃�0000鬃鬃�0000讀'.
	LineBreakTable at: WJ put: '鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃讀'.
	LineBreakTable at: ZW put: '0000�0000�000000000000鬃000000�00�00000x'.
	LineBreakTable at: RI put: '00󪧤鬃鬃鬃000�00�000鬃�0000鬃鬃鬃000讀'.
	LineBreakTable at: AI put: '󪧤�0鬃鬃鬃00鬃0鬃000鬃鬃�00鬃鬃�0鬃鬃x'.
	LineBreakTable at: XX put: '󪧤�0鬃鬃鬃00鬃0鬃000鬃鬃�00鬃鬃�0鬃鬃x'.
	LineBreakTable at: SA put: '󪧤�0鬃鬃鬃00鬃0鬃000鬃鬃�00鬃鬃�0鬃鬃x'.
	LineBreakTable at: CJ put: '00󪧤鬃鬃鬃000�00�000鬃�0000鬃鬃�0000讀'.
	LineBreakTable at: SG put: '鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃鬃�'.
! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 3/9/2013 10:27'!
parseCaseMappingFrom: stream
	"Parse the Unicode casing mappings from the given stream.
	Handle only the simple mappings"
	"
		UniChar initializeCaseMappings.
	"
	|  toNumber |
	toNumber := [:quad | ('16r', quad) asNumber].
	
	ToCasefold 	:= IdentityDictionary new: 2048.
	ToUpper 		:= IdentityDictionary new: 2048.
	ToLower 		:= IdentityDictionary new: 2048.

	[stream atEnd] whileFalse:[
		| fields line srcCode dstCode |
		line := stream nextLine copyUpTo: $#.
		fields := line withBlanksTrimmed findTokens: $;.
		(fields size > 2 and: [#('C' 'S') includes: (fields at: 2) withBlanksTrimmed]) ifTrue:[
			srcCode := toNumber value:(fields at: 1) withBlanksTrimmed.
			dstCode := toNumber value: (fields at: 3) withBlanksTrimmed..
			ToCasefold at: srcCode put: dstCode.
		].
	].

	ToCasefold keysAndValuesDo:
		[:k :v |
		((self value: k) isUppercase)
			ifTrue:
				["In most cases, uppercase letter are folded to lower case"
				ToUpper at: v put: k.
				ToLower at: k put: v].
		((self value: k) isLowercase)
			ifTrue:
				["In a few cases, two lower case letters are folded to the same lower case.
				We must find an upper case letter folded to the same letter"
				| up |
				up := ToCasefold keys detect: [:e | ((self value: e) isUppercase) 
													and: [(ToCasefold at: e) = v]] ifNone: [nil].
				up ifNotNil: [ToUpper at: k put: up]]].
! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 3/13/2013 15:31'!
parseGeneralPropertiesFrom: aStream

	|  toNumber |
	toNumber := [:quad | ('16r', quad) asNumber].

	GeneralCategory := IdentityDictionary new: 24430..
	
	[aStream atEnd] whileFalse:[
		| fields line codePoint generalCategory  |
		line := aStream nextLine.
		fields := line withBlanksTrimmed findTokens: $;.
		(fields size > 3) ifTrue: [.
			codePoint := toNumber value: (fields at: 1).
			(codePoint asUniChar isCJKIdeograph) ifFalse: [ "add it"
				generalCategory := self perform: ((fields at: 3) asSymbol).
				GeneralCategory at: codePoint put: generalCategory
			]
		]
	].
! !

!UniChar class methodsFor: 'class initialization' stamp: 'KenD 3/13/2013 15:28'!
parseLineBreakPropertiesFrom: aStream

	|  toNumber  |
	toNumber := [:quad | ('16r', quad) asNumber].

	"GeneralCategory initialized before this is invoked"
	
	[aStream atEnd] whileFalse:[
		| fields line codePoint  lbCategory otherInfo |
		line := aStream nextLine copyUpTo: $#.
		fields := line withBlanksTrimmed findTokens: $; .
		(fields size > 1) ifTrue: [.
			codePoint := toNumber value: (fields at: 1).
			(codePoint asUniChar isCJKIdeograph) ifFalse: [ "add it"
				lbCategory := self perform: ((fields at: 2) asSymbol).
				(lbCategory isZero) ifFalse: [
					otherInfo := GeneralCategory at: codePoint ifAbsent: [ Cn ].
					GeneralCategory at: codePoint put: (otherInfo + (lbCategory bitShift: 16)).
				]
			]
		].
	].
! !

!UniChar class methodsFor: 'accessing' stamp: 'KenD 4/17/2013 15:17'!
isCharBreakBetween: leftChar and:  rightChar
	"Answer true if a Character break is allowed between the two characters.
	
	This is required because Combining Marks and other codePoints 
	must be combined into a single display character."

	^ ((LineBreakTable at: (leftChar lineBreakCategoryCode)) "@@FIXME: Bogus!!!!@@"
						   at: (rightChar lineBreakCategoryCode)) = $0! !

!UniChar class methodsFor: 'accessing' stamp: 'KenD 4/17/2013 15:12'!
isLineBreakBetween: leftChar and:  rightChar
	"Answer true if a line break is allowed between the two characters."

	"See comments in UniChar class>>initializeLineBreakTable"
	^ ((LineBreakTable at: (leftChar lineBreakCategoryCode))
						   at: (rightChar lineBreakCategoryCode)) = $0! !

!UniChar class methodsFor: 'accessing' stamp: 'KenD 4/17/2013 16:10'!
isWordBreakBetween: leftChar and:  rightChar
	"Answer true if a Word break is allowed between the two characters."

	"See Unicode Anned 29: Unicode Text Segmenation"

	"@@FIXME: brute force@@"
	| leftGenProp rightGenProp leftLineProp rightLineProp |
	leftGenProp := leftChar generalCategoryCode.
	rightGenProp := rightChar generalCategoryCode.
	leftLineProp := leftChar lineBreakCategory.
	rightLineProp := rightChar lineBreakCategory.
	
	! !

!UniChar class methodsFor: 'accessing' stamp: 'KenD 3/24/2013 21:38'!
lineBreakPropNameAt: lineBreakPropertyCode

	(lineBreakPropertyCode isZero)
	ifTrue: [ ^ #Unknown ]
	ifFalse: [ ^ LineBreakProperties at: lineBreakPropertyCode ]! !

!UniChar class methodsFor: 'accessing' stamp: 'KenD 3/24/2013 21:32'!
lineBreakTableAt: row at: col
	"Answer the character specified"

	"See comments in UniChar class>>initializeLineBreakTable"
	
	^ (LineBreakTable at: row) at: col! !

!UniChar class methodsFor: 'streams' stamp: 'KenD 4/5/2013 16:41'!
nextUniCharFromUtf8: anUtf8Stream
	"anUtf8Stream can be over a ByteArray
	Answer nil if conversion not possible, because of invalid UTF-8.
	Also answer nil for codePoint U+FEFF (BOM, unneededly added by Win clipboard)"

	| byte1 byte2 byte3 byte4 codePoint |
	byte1 := anUtf8Stream next asInteger.
	byte1 < 128 ifTrue: [ ^ byte1 asUniChar ]. "single byte"
	
	"At least 2 bytes"
	byte2 := anUtf8Stream next asInteger.
	(byte2 bitAnd: 16rC0) = 16r80 ifFalse: [^nil]. "invalid UTF-8"
	
	(byte1 bitAnd: 16rE0) = 192 ifTrue: [ "two bytes"
		codePoint :=  (((byte1 bitAnd: 31) bitShift: 6) 
					 + (byte2 bitAnd: 63)).
		^ codePoint asUniChar
	].
	
	"At least 3 bytes"
	byte3 := anUtf8Stream next asInteger.
	(byte3 bitAnd: 16rC0) = 16r80 ifFalse: [^nil]. "invalid UTF-8"
	
	(byte1 bitAnd: 16rF0) = 224 ifTrue: [ "three bytes"
		codePoint :=  ((byte1 bitAnd: 15) bitShift: 12) 
					+ ((byte2 bitAnd: 63) bitShift: 6) 
					+ (byte3 bitAnd: 63).
		^ codePoint asUniChar
	].

	"4 bytes"
	byte4 := anUtf8Stream next asInteger.
	(byte4 bitAnd: 16rC0) = 16r80 ifFalse: [^nil]. "invalid UTF-8"
	
	(byte1 bitAnd: 16rF8) = 240 ifTrue: [  "four bytes"
		codePoint :=  ((byte1 bitAnd: 16r7) bitShift: 18) 
					+ ((byte2 bitAnd: 63)   bitShift: 12) 
					+ ((byte3 bitAnd: 63)   bitShift:   6) 
					+ (byte4 bitAnd: 63).
		^ codePoint asUniChar
	].

	^nil! !

!UniStringWrapper methodsFor: 'conversion' stamp: 'KenD 3/18/2013 15:21'!
asUniString

	"Answer the UniString I currently wrap"
	^uniString ! !

!UniStringWrapper methodsFor: 'delegation' stamp: 'KenD 3/21/2013 21:56'!
at: index

	^ uniString at: index! !

!UniStringWrapper methodsFor: 'delegation' stamp: 'KenD 3/18/2013 15:19'!
doesNotUnderstand: aMessage
	"Delegate operations to uniString and Answer the result.
	Ir a result is a new UniString, remember that as theRope"

	| result |
	result := aMessage sendTo: uniString .
	
	(result isKindOf: UniString) ifTrue: [ uniString := result ].
	
	^ result! !

!UniStringWrapper methodsFor: 'delegation' stamp: 'KenD 3/18/2013 15:30'!
replaceFrom: start to: stop with: replacement startingAt: repStart 
		"Answer a new UniString rope with the replacement.
		Nota Bene: The String method with this name is destructive!!"
		| repRope |
		repRope := replacement asUniString .

	uniString := uniString copyReplaceFrom: start to: stop with: (repRope copyFrom: repStart to: (repRope size)).
	
	^ uniString! !

!UniStringWrapper methodsFor: 'delegation' stamp: 'KenD 3/21/2013 21:54'!
size

	^ uniString size! !

!UniStringWrapper methodsFor: 'delegation' stamp: 'KenD 3/22/2013 16:43'!
storeOn: aStream

	uniString storeOn: aStream ! !

!UniStringWrapper methodsFor: 'delegation' stamp: 'KenD 3/22/2013 16:41'!
stringRepresentation

	^uniString stringRepresentation ! !

!UniStringWrapper methodsFor: 'initialize-release' stamp: 'KenD 3/18/2013 15:24'!
initialize

	"default"
	uniString := UniString emptyString.! !

!UniStringWrapper methodsFor: 'initialize-release' stamp: 'KenD 3/18/2013 15:24'!
with: aString
	"Initialize uniString"

	uniString := aString asUniString.! !

!UniStringWrapper methodsFor: 'printing' stamp: 'KenD 3/24/2013 13:27'!
printOn: aStream
	"Look good in the inspector"
"
	(UniStringWrapper fromString: 'little wrapped thing') inspect.
"
	aStream nextPutAll: 'Uni*Wrap*('. "UniStringWrapper is very long"
	uniString storeOn: aStream.
	aStream nextPut: $)
	! !

!UniStringWrapper methodsFor: 'printing' stamp: 'KenD 3/22/2013 16:39'!
printString

	^uniString printString ! !

!UniStringWrapper class methodsFor: 'instance creation' stamp: 'KenD 4/7/2013 09:31'!
defaultFontClass
	^UniForms! !

!UniStringWrapper class methodsFor: 'instance creation' stamp: 'KenD 3/20/2013 08:21'!
fromString: aString

	^ self with: aString! !

!UniStringWrapper class methodsFor: 'instance creation' stamp: 'KenD 4/3/2013 15:53'!
new: aSize

	^ UniStringWrapper fromString: (String new: aSize withAll: Character space)! !

!UniStringWrapper class methodsFor: 'instance creation' stamp: 'KenD 3/20/2013 08:21'!
with: aString

	^ self basicNew with: (aString asUniString)! !

!Number methodsFor: '*unicodes' stamp: 'KenD 4/15/2013 21:06'!
asUniChar
	"Answer a Unicode character [UniChar] with me as a code point"

	^UniChar fromCodePoint: self asInteger! !

!Number methodsFor: '*unicodes' stamp: 'KenD 3/21/2013 16:17'!
asUniString
	"Answer a UniString representing me"

	^ UniString fromString: (self asString).! !

!Integer methodsFor: '*unicodes' stamp: 'KenD 4/10/2013 15:40'!
asUniChar
	"Answer a UniChar."
	
	^ UniChar value: self! !

!Integer methodsFor: '*unicodes' stamp: 'KenD 4/5/2013 16:27'!
asUtf8toStream: aStream
	"Add self to aStream as a Utf8 Unicode code point"

	self < 128 ifTrue: [ 
		^ aStream nextPut: self ].
	self < 2048 ifTrue: [ 
		^ aStream 
			nextPut: (2r11000000 + (self bitShift: -6)); 
			nextPut: (2r10000000 + (self bitAnd: 2r111111)) ].
	self < 65535 ifTrue: [ 
		^ aStream 
			nextPut: (2r11100000 + (self bitShift: -12));
			nextPut: (2r10000000 + ((self bitShift: -6) bitAnd: 2r111111)); 
			nextPut: (2r10000000 + (self bitAnd: 2r111111)) ].
	self <= 16r10FFFF  ifTrue: [  "maximum UTF8 code point"
		^ aStream 
			nextPut: (2r11110000 + (self bitShift: -18));
			nextPut: (2r10000000 + (self bitShift: -12));
			nextPut: (2r10000000 + ((self bitShift: -6) bitAnd: 2r111111)); 
			nextPut: (2r10000000 + (self bitAnd: 2r111111)) ].
	self error: 'Unicode character code point outside range'! !

!Integer methodsFor: '*unicodes' stamp: 'KenD 4/10/2013 15:40'!
codePoint
	"Assume I am used in place of a UniChar. Answer self."
	
	^self! !

!Integer methodsFor: '*unicodes' stamp: 'KenD 2/24/2013 09:48'!
uniDigit
	"This is a Unicode codePoint value representing a digit.  Return the corresponding digit value"
	(UniChar zeroCodePoints) 
		findBinary: [ :elt | self - elt ] "Compare block "
	 	do: [ :exactMatch | ^exactMatch ]
	 	ifNone: [ :low :high | ^ self - low ]
		
"
16r32 uniDigit .  -> 2
16r7C2 uniDigit -> 2.
"! !

!Integer class methodsFor: '*unicodes' stamp: 'KenD 4/5/2013 16:34'!
nextUnicodeCodePointFromUtf8: anUtf8Stream
	"anUtf8Stream can be over a ByteArray
	Answer nil if conversion not possible, because of invalid UTF-8.
	Also answer nil for codePoint U+FEFF (BOM, unneededly added by Win clipboard)"

	| byte1 byte2 byte3 byte4 codePoint |
	byte1 _ anUtf8Stream next asInteger.
	byte1 < 128 ifTrue: [	"single byte"
		^byte1 ].
	
	"At least 2 bytes"
	byte2 _ anUtf8Stream next asInteger.
	(byte2 bitAnd: 16rC0) = 16r80 ifFalse: [^nil]. "invalid UTF-8"
	(byte1 bitAnd: 16rE0) = 192 ifTrue: [ "two bytes"
		^ ((byte1 bitAnd: 31) bitShift: 6) 
			+ (byte2 bitAnd: 63) 
	].
	
	"At least 3 bytes"
	byte3 _ anUtf8Stream next asInteger.
	(byte3 bitAnd: 16rC0) = 16r80 ifFalse: [^nil]. "invalid UTF-8"
	(byte1 bitAnd: 16rF0) = 224 ifTrue: [ "three bytes"
		codePoint _  ((byte1 bitAnd: 15) bitShift: 12) 
					+ ((byte2 bitAnd: 63) bitShift: 6) 
					+ (byte3 bitAnd: 63).
		^ codePoint
	].

	"4 bytes"
	byte4 _ anUtf8Stream next asInteger.
	(byte4 bitAnd: 16rC0) = 16r80 ifFalse: [^nil]. "invalid UTF-8"
	(byte1 bitAnd: 16rF8) = 240 ifTrue: [  "four bytes"
		^((byte1 bitAnd: 16r7) bitShift: 18) 
			+ ((byte2 bitAnd: 63) bitShift: 12) 
			+ ((byte3 bitAnd: 63) bitShift: 6) 
			+ (byte4 bitAnd: 63) ].

	^nil! !

!Character methodsFor: '*unicodes' stamp: 'KenD 9/5/2016 15:10:49'!
asUniChar
	"Answer a Unicode character based on my value interpreted as a code point."

	^UniChar fromCodePoint: (self codePoint)! !

!Character methodsFor: '*unicodes' stamp: 'KenD 2/17/2013 20:43'!
asUniString
	"Answer a Unicode string based on my value interpreted as a code point."

	^UniString fromString: (self asString )! !

!String methodsFor: '*unicodes' stamp: 'KenD 9/4/2016 16:55:52'!
appendToUniString: aUniString

	^ UniSplice splice: aUniString with: self asUniString! !

!String methodsFor: '*unicodes' stamp: 'jmv 5/4/2014 10:13'!
asUniString

	"^UniString fromString: self"
	"Convert embedded NCRs to UTF-8, and then to UniString"
	^(self asUtf8: true) asUniString! !

!String methodsFor: '*unicodes' stamp: 'KenD 5/2/2014 20:14'!
defaultFontClass

	^ StrikeFont ! !

!String methodsFor: '*unicodes' stamp: 'KenD 9/6/2016 16:37:54'!
replaceUniString: aUniString from: start to: stop

	^ self asUniString replaceFrom: start to: stop with: aUniString.! !

!Symbol methodsFor: '*unicodes' stamp: 'KenD 3/20/2013 22:16'!
asUniString

	^UniString fromString: self asString! !

!Array methodsFor: '*unicodes' stamp: 'KenD 4/7/2013 19:02'!
asUniString
	"Consider self a collection of Unicode codePoints.  Answer a UniString"
	
	"Note that subclasses may specialize. See ByteArray>>asUniString"

	^ self uniStringFromCodePoints! !

!Array methodsFor: '*unicodes' stamp: 'KenD 4/7/2013 19:00'!
uniStringFromCodePoints
	"Consider self a collection of Unicode codePoints.  Answer a UniString"

	^ UniString fromCodePointCollection: self! !

!ByteArray methodsFor: '*unicodes' stamp: 'KenD 4/7/2013 18:59'!
asUniString
	"Consider self as UTF-8.  Answer a UniString"

	^ UniString fromUtf8: self! !

!Text methodsFor: '*unicodes' stamp: 'KenD 9/4/2016 17:10:10'!
appendToUniString: aUniString

	| stringSize |
	stringSize := aUniString size.
	^ (aUniString asText) 
			replaceFrom: stringSize + 1
			to: stringSize 
			with: self asUniString! !

!Text methodsFor: '*unicodes' stamp: 'KenD 9/4/2016 16:44:44'!
asUniString
	"Answer a copy of me with a UniString as my string"
	
	^ (Text string: self string asUniString 
	             runs:   self runs)
		font: UniForms default! !

!TextReplaceCommand methodsFor: '*unicodes' stamp: 'KenD 8/29/2016 15:12:26'!
appendUniStringToNew: aStringOrText
	new _ new asUniString, aStringOrText! !

!FileListWindow class methodsFor: '*unicodes' stamp: 'jmv 6/27/2015 09:56'!
openUniFileList
	"Answer a FileList which can view Unicode"
	"
	FileListWindow openUniFileList.
	"
	FileListWindow open: (UniFileList new directory: DirectoryEntry currentDirectory ) label: nil! !

!InnerTextMorph methodsFor: '*unicodes' stamp: 'KenD 9/10/2016 07:59:47'!
model

	^model
	! !

!BitBltCanvas methodsFor: '*unicodes' stamp: 'KenD 4/14/2013 21:03'!
grafPort

	^port! !
UniString initialize!
UniLazyString initialize!
UniSplice initialize!
UniTextEditor initialize!
UniForms initialize!
UniChar initialize!
