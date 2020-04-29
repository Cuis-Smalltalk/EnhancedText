'From Cuis 5.0 [latest update: #4126] on 29 April 2020 at 2:54:38 pm'!
'Description Replace UniCodes'' UniForms bogus StrikeFont with real TrueType font.'!
!provides: 'UniCodesTrueType' 1 12!
!requires: 'UniCodes' 1 58 nil!
!requires: 'VectorGraphics' 1 125 nil!
SystemOrganization addCategory: #UniCodesTrueType!


!classDefinition: #UniCodesTrueTypePackage category: #UniCodesTrueType!
CodePackage subclass: #UniCodesTrueTypePackage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'UniCodesTrueType'!
!classDefinition: 'UniCodesTrueTypePackage class' category: #UniCodesTrueType!
UniCodesTrueTypePackage class
	instanceVariableNames: ''!


!UniCodesTrueTypePackage commentStamp: '<historical>' prior: 0!
prePackageInstall reads default unicode font.

UniTextEditor openFromFileEntry:  
	((CodePackage packageOfClass: UniCodesTrueTypePackage ifNone: nil) fullFileName 
		asFileEntry parent // 'utf8sampler.txt').!

!UniCodesTrueTypePackage class methodsFor: 'installing' stamp: 'KenD 4/29/2020 14:58:10'!
postPackageInstall
	"Load default unicode TrueType font.
	Currently from: 
	http://unifoundry.com/pub/unifont/unifont-13.0.01/font-builds/unifont-13.0.01.ttf"

	"Replace UniForms StrikeFont 'Unifont' "
	| unifontDesc baseDesc unifamily |
	Preferences disable: #loadOnlyLatinGlyphData.
	unifontDesc := TTFontDescription 
		fromFileEntry: (self package fullFileName asFileEntry parent // 'unifont-13.0.01.ttf') 
		familyName: 'Unifont'.
	baseDesc := unifontDesc at: 0.
	unifamily _ TrueTypeFontFamily baseTTFontDescription: baseDesc.

	FontFamily replaceFamilyNamed: 'Unifont' with: unifamily.
	DisplayScreen runningWorld ifNotNil: [ :world | world fontPreferenceChanged ]
	! !
UniCodesTrueTypePackage prePackageInstall!

!TrueTypeFont methodsFor: '*unicodestruetype' stamp: 'KenD 4/28/2020 15:16:54'!
formForCodePoint: aCodePoint

	"Answer Unicode form for UniChar"
	| glyph |
	Character
			evaluateOnce: [ :byte1 :byte2 :byte3 :byte4 |
				glyph _ UniForms default glyphAtUtf8Byte1: byte1 byte2: byte2 byte3: byte3 byte4: byte4 ]
			withUtf8BytesOfUnicodeCodePoint: aCodePoint.
	^glyph form! !

!TrueTypeFont class methodsFor: '*unicodestruetype' stamp: 'KenD 4/8/2020 16:34:26'!
fromUser: priorFont
	"
	TrueTypeFont fromUser
	"
	"Present a menu of available TrueType fonts, and if one is chosen, return it.
	Otherwise return nil.
	Show only baseFonts i.e. FamilyName, pointSize (but do not include emphasis, such as italic or bold)"

	| fontList fontMenu active ptMenu label spec |
	fontList := (AbstractFont familyNames) select: [ :ffname | (FontFamily familyNamed: ffname) class = TrueTypeFontFamily ].
	fontMenu := MenuMorph new defaultTarget: self.
	fontList do: [:fontName | 
			active := priorFont familyName sameAs: fontName.
			ptMenu := MenuMorph new defaultTarget: self.
			(AbstractFont pointSizesFor: fontName ) do: [ :pt | 
					(active and: [pt = priorFont pointSize]) 
						ifTrue: [label := '<on>']
						ifFalse: [label := '<off>'].
					label := label , pt printString , ' pt'.
					ptMenu 
						add: label
						target: fontMenu
						action: #modalSelection:
						argument: { 
								fontName.
								pt}].
			active ifTrue: [label := '<on>'] ifFalse: [label := '<off>'].
			label := label , fontName.
			fontMenu add: label subMenu: ptMenu].
	spec := fontMenu invokeModal.
	spec ifNil: [^nil].
	^AbstractFont familyName: spec first pointSize: spec last! !

!TTFontDescription class methodsFor: '*unicodestruetype' stamp: 'KenD 4/5/2020 15:02:16'!
fromFileEntry: aFileEntry familyName: aStringName
	"
	TTFontDescription read: DirectoryEntry smalltalkImageDirectory / 'TrueTypeFonts'. 
	"
	| ttfont |
	Descriptions ifNil: [ Descriptions _ Dictionary new ].
	ttfont _ TTFontReader readTTFFrom: aFileEntry binaryContents.
	(Descriptions at: aStringName ifAbsentPut: [ Dictionary new]) at: ttfont emphasis put: ttfont.
	^self withFamilyName: aStringName! !
UniCodesTrueTypePackage postPackageInstall!
