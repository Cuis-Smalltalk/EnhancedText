'From Cuis 5.0 [latest update: #4108] on 8 April 2020 at 4:34:55 pm'!
'Description Replace UniCodes'' UniForms bogus StrikeFont with real TrueType font.'!
!provides: 'UniCodesTrueType' 1 5!
!requires: 'UniCodes' 1 58 nil!
!requires: 'VectorGraphics' 1 108 nil!
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

!UniCodesTrueTypePackage class methodsFor: 'installing' stamp: 'KenD 4/5/2020 16:40:03'!
doFontSurgery

	"Fix display of Space and LineFeed for 12 point Unifont"
	| pointSize unifont vfont ch spaceGlyph spaceFormGlyph |
	pointSize := 12.
	unifont := FontFamily familyName: 'Unifont' pointSize: pointSize.
	vfont := FontFamily familyName: 'DejaVu' pointSize: pointSize.
	ch := UniChar fromCodePoint: 32.
	unifont glyphAt: ch.
	spaceGlyph := vfont glyphAt: (Character codePoint: 32).
	spaceFormGlyph := FormGlyph 
								form: spaceGlyph 
								leftOffset: 0 
								topOffset: 0 
								advanceWidth: spaceGlyph width.
	unifont glyphAt: (Character space) put: spaceFormGlyph.
	unifont glyphAt: (Character lf) put: spaceFormGlyph.
	! !

!UniCodesTrueTypePackage class methodsFor: 'installing' stamp: 'KenD 4/8/2020 12:14:22'!
prePackageInstall
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
	self doFontSurgery. "@@FIXME!!@@"
	DisplayScreen runningWorld ifNotNil: [ :world | world fontPreferenceChanged ].
	" self prePackageInstall "
	! !
UniCodesTrueTypePackage prePackageInstall!

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

!UniForms class methodsFor: '*unicodestruetype' stamp: 'KenD 4/7/2020 16:11:23'!
default

	"Answer Unifont 12p for UniCodesTrueType"
	^ FontFamily familyName: 'Unifont' pointSize: 12! !
UniCodesTrueTypePackage postPackageInstall!
