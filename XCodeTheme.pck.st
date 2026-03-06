'From Cuis7.6 [latest update: #7777] on 6 March 2026 at 11:57:13 am'!
'Description Themes inspired by Apple''s Xcode IDE'!
!provides: 'XCodeTheme' 1 3!
SystemOrganization addCategory: #XCodeTheme!


!classDefinition: #XCodeThemeDark category: #XCodeTheme!
Theme subclass: #XCodeThemeDark
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XCodeTheme'!
!classDefinition: 'XCodeThemeDark class' category: #XCodeTheme!
XCodeThemeDark class
	instanceVariableNames: ''!

!classDefinition: #XCodeThemeDarkRounded category: #XCodeTheme!
XCodeThemeDark subclass: #XCodeThemeDarkRounded
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XCodeTheme'!
!classDefinition: 'XCodeThemeDarkRounded class' category: #XCodeTheme!
XCodeThemeDarkRounded class
	instanceVariableNames: ''!

!classDefinition: #XCodeThemeLight category: #XCodeTheme!
Theme subclass: #XCodeThemeLight
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XCodeTheme'!
!classDefinition: 'XCodeThemeLight class' category: #XCodeTheme!
XCodeThemeLight class
	instanceVariableNames: ''!

!classDefinition: #XCodeThemeLightRounded category: #XCodeTheme!
XCodeThemeLight subclass: #XCodeThemeLightRounded
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XCodeTheme'!
!classDefinition: 'XCodeThemeLightRounded class' category: #XCodeTheme!
XCodeThemeLightRounded class
	instanceVariableNames: ''!


!XCodeThemeDark commentStamp: '<historical>' prior: 0!
A dark theme inspired by Apple XCode IDE.!

!XCodeThemeDarkRounded commentStamp: '<historical>' prior: 0!
A dark rounded theme inspired by Apple XCode IDE.!

!XCodeThemeLight commentStamp: '<historical>' prior: 0!
A light theme inspired by Apple XCode IDE.!

!XCodeThemeLightRounded commentStamp: '<historical>' prior: 0!
A light rounded theme inspired by Apple XCode IDE.!

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 22:37:57'!
background
	"Main desktop background"
	^ `Color veryVeryDarkGray`! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:43:07'!
buttonLabel
	"Button text color"
	^ Color r: 0.85 g: 0.85 b: 0.85! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 21:53:57'!
missingCommentTextColor
	"Color for missing comments"
	^ Color r: 0.416 g: 0.600 b: 0.333! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:42:34'!
paneBackgroundFrom: aColor
	"Pane backgrounds"
	^ (aColor alphaMixed: 0.1 with: Color darkGray) alpha: 0.9! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:41:25'!
text
	"Default text color"
	^ Color r: 0.847 g: 0.847 b: 0.847! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:41:46'!
textHighlight
	"Selection color"
	^ Color r: 0.184 g: 0.396 b: 0.647! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:41:57'!
textHighlightFocused: focused
	"Focused/unfocused selection"
	| textHighlight |
	Display depth = 1 ifTrue: [^ Color veryLightGray].
	Display depth = 2 ifTrue: [^ Color gray: 0.87].
	textHighlight := self textHighlight.
	^focused
		ifTrue: [ textHighlight ]
		ifFalse: [ self unfocusedTextHighlightFrom: textHighlight ]! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:41:34'!
textPane
	"Editor background"
	^ Color r: 0.118 g: 0.118 b: 0.137! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:37:16'!
unfocusedTextHighlightFrom: aColor
	^aColor adjustSaturation: 0.0 brightness: 0.08! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:42:46'!
windowLabel
	"Window title text"
	^ Color r: 0.9 g: 0.9 b: 0.9! !

!XCodeThemeDark methodsFor: 'tool colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:42:16'!
defaultWindowColor
	"Window background"
	^ Color r: 0.137 g: 0.137 b: 0.157 alpha: 0.95! !

!XCodeThemeDark methodsFor: 'menu colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:44:22'!
menu
	"Menu background"
	^ Color r: 0.137 g: 0.137 b: 0.157 alpha: 0.98! !

!XCodeThemeDark methodsFor: 'menu colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:44:54'!
menuText
	"Menu text color"
	^ Color r: 0.847 g: 0.847 b: 0.847! !

!XCodeThemeDark methodsFor: 'menu colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:45:08'!
menuTitleBar
	"Menu title bar"
	^ self menu slightlyLighter! !

!XCodeThemeDark methodsFor: 'widget colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:45:56'!
listSelectedRowText
	"Selected list item text"
	^ Color white! !

!XCodeThemeDark methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 21/Feb/2026 22:29:53'!
embossedTitles
	"Flat titles"
	^ true! !

!XCodeThemeDark methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:57:42'!
roundButtons
	"Flat buttons"
	^ false! !

!XCodeThemeDark methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:58:03'!
roundWindowCorners
	"Square window corners"
	^ false! !

!XCodeThemeDark methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:58:24'!
useButtonGradient
	^ false! !

!XCodeThemeDark methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:58:48'!
useUniformColors
	"Consistent color scheme"
	^ true! !

!XCodeThemeDark methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 21/Feb/2026 14:59:07'!
useWindowTitleGradient
	"Flat window titles"
	^ false! !

!XCodeThemeDark methodsFor: 'initialization' stamp: 'Arkhangelsky D.S. 21/Feb/2026 21:53:04'!
initialize
	super initialize.
	self runningWorld backgroundImageData: nil.! !

!XCodeThemeDark methodsFor: 'shout' stamp: 'Arkhangelsky D.S. 21/Feb/2026 22:23:41'!
shout
	^ {
		"Default text - light gray"
		#defaults -> '#D4D4D4'.

		"Undefined/invalid - red"
		#undefined -> '#FF7B72'.

		"Method tags/pragmas - purple"
		#methodTags -> '#C586C0'.

		"Pseudo variables (self, super, nil, true, false) - pink/red"
		#pseudoVariables -> '#FF7B72'.

		"Messages/method calls - yellow"
		#messages -> '#DCDCAA'.

		"Arguments/parameters - light blue"
		#arguments -> '#9CDCFE'.

		"Instance variables - light blue"
		#instVar -> '#9CDCFE'.

		"Incomplete/unimplemented messages - gray"
		#incompleteMessages -> '#808080'.

		"Block nesting levels - various colors"
		#blockLevelZero -> '#4EC9B0'.
		#blockLevelOne -> '#C586C0'.
		#blockLevelTwo -> '#FF7B72'.
		#blockLevelThree -> '#DCDCAA'.
		#blockLevelFour -> '#4EC9B0'.
		#blockLevelFive -> '#C586C0'.
		#blockLevelSix -> '#FF7B72'.
		#blockLevelSeven -> '#DCDCAA'.

		"Temp bar and variables - gray/blue"
		#tempBar -> '#666666'.
		#tempVars -> '#9CDCFE'.

		"Class variables - cyan"
		#classVar -> '#4EC9B0'.

		"Global variables - yellow"
		#globalVar -> '#DCDCAA'.

		"Comments - green"
		#comment -> '#6A9955'.

		"Strings - orange/salmon"
		#string -> '#CE9178'.

		"Symbols - cyan"
		#symbol -> '#4EC9B0'.

		"Numbers - light green"
		#number -> '#B5CEA8'.

		"Character constants - orange"
		#character -> '#CE9178'.

		"Selectors - yellow"
		#selector -> '#DCDCAA'.

		"Return operator - pink"
		#return -> '#FF7B72'.

		"Assignment operator - white"
		#assignment -> '#FFFFFF'.

		"Block brackets - yellow"
		#blockStart -> '#DCDCAA'.
		#blockEnd -> '#DCDCAA'.

		"Array parentheses - white"
		#arrayStart -> '#FFFFFF'.
		#arrayEnd -> '#FFFFFF'.

		"Left and right parentheses - white"
		#leftParenthesis -> '#FFFFFF'.
		#rightParenthesis -> '#FFFFFF'.

		"Statement separators"
		#statementSeparator -> '#FFFFFF'.

		"Literals"
		#literals -> '#B5CEA8'.
	}! !

!XCodeThemeDarkRounded methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 6/Mar/2026 11:52:37'!
roundButtons
	"Rounded buttons"
	^ true! !

!XCodeThemeDarkRounded methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 6/Mar/2026 11:52:48'!
roundWindowCorners
	"Rounded window corners"
	^ true! !

!XCodeThemeLight methodsFor: 'menu colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:57:48'!
menu
	"Menu background - light"
	^ Color r: 0.97 g: 0.97 b: 0.97 alpha: 0.98! !

!XCodeThemeLight methodsFor: 'menu colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:57:57'!
menuText
	"Menu text color - dark"
	^ Color r: 0.15 g: 0.15 b: 0.15! !

!XCodeThemeLight methodsFor: 'menu colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:58:06'!
menuTitleBar
	"Menu title bar - slightly darker"
	^ self menu slightlyDarker! !

!XCodeThemeLight methodsFor: 'tool colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 11:05:55'!
defaultWindowColor
	"Window title bar - darker gray"
	^ Color r: 0.85 g: 0.85 b: 0.85! !

!XCodeThemeLight methodsFor: 'shout' stamp: 'Arkhangelsky D.S. 22/Feb/2026 11:00:29'!
shout
	^ {
		"Default text - dark gray/black"
		#defaults -> '#000000'.

		"Undefined/invalid - dark red"
		#undefined -> '#CD3131'.

		"Method tags/pragmas - purple"
		#methodTags -> '#AF00DB'.

		"Pseudo variables (self, super, nil, true, false) - dark pink/red"
		#pseudoVariables -> '#CD3131'.

		"Messages/method calls - dark yellow/brown"
		#messages -> '#795E26'.

		"Arguments/parameters - dark blue"
		#arguments -> '#001080'.

		"Instance variables - dark blue"
		#instVar -> '#001080'.

		"Incomplete/unimplemented messages - gray"
		#incompleteMessages -> '#808080'.

		"Block nesting levels - various dark colors"
		#blockLevelZero -> '#267F99'.
		#blockLevelOne -> '#AF00DB'.
		#blockLevelTwo -> '#CD3131'.
		#blockLevelThree -> '#795E26'.
		#blockLevelFour -> '#267F99'.
		#blockLevelFive -> '#AF00DB'.
		#blockLevelSix -> '#CD3131'.
		#blockLevelSeven -> '#795E26'.

		"Temp bar and variables - gray/blue"
		#tempBar -> '#808080'.
		#tempVars -> '#001080'.

		"Class variables - teal"
		#classVar -> '#267F99'.

		"Global variables - dark yellow"
		#globalVar -> '#795E26'.

		"Comments - dark green"
		#comment -> '#008000'.

		"Strings - dark orange/brown"
		#string -> '#A31515'.

		"Symbols - teal"
		#symbol -> '#267F99'.

		"Numbers - dark green"
		#number -> '#098658'.

		"Character constants - dark orange"
		#character -> '#A31515'.

		"Selectors - dark yellow"
		#selector -> '#795E26'.

		"Return operator (^) - dark red"
		#return -> '#CD3131'.

		"Assignment operator - black"
		#assignment -> '#000000'.

		"Block brackets - dark yellow"
		#blockStart -> '#795E26'.
		#blockEnd -> '#795E26'.

		"Array parentheses - black"
		#arrayStart -> '#000000'.
		#arrayEnd -> '#000000'.

		"Left and right parentheses - black"
		#leftParenthesis -> '#000000'.
		#rightParenthesis -> '#000000'.

		"Statement separators"
		#statementSeparator -> '#000000'.

		"Literals - dark green"
		#literals -> '#098658'.
	}! !

!XCodeThemeLight methodsFor: 'initialization' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:59:49'!
initialize
	super initialize.
	self runningWorld backgroundImageData: nil.! !

!XCodeThemeLight methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:58:38'!
embossedTitles
	"Flat titles"
	^ false! !

!XCodeThemeLight methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:58:48'!
roundButtons
	"Flat buttons"
	^ false! !

!XCodeThemeLight methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:58:57'!
roundWindowCorners
	"Square window corners"
	^ false! !

!XCodeThemeLight methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:59:06'!
useButtonGradient
	^ false! !

!XCodeThemeLight methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:59:16'!
useUniformColors
	"Consistent color scheme"
	^ true! !

!XCodeThemeLight methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:59:25'!
useWindowTitleGradient
	"Flat window titles"
	^ false! !

!XCodeThemeLight methodsFor: 'widget colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:58:22'!
listSelectedRowText
	"Selected list item text - dark"
	^ Color r: 0.1 g: 0.1 b: 0.1! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:55:07'!
background
	"Main desktop background - light gray"
	^ `Color veryLightGray`! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:55:25'!
buttonLabel
	"Button text color - dark gray"
	^ Color r: 0.2 g: 0.2 b: 0.2! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:55:42'!
missingCommentTextColor
	"Color for missing comments - green"
	^ Color r: 0.0 g: 0.5 b: 0.0! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 11:06:25'!
paneBackgroundFrom: aColor
	"Pane backgrounds - pure white"
	^ Color white! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:56:23'!
text
	"Default text color - almost black"
	^ Color r: 0.1 g: 0.1 b: 0.1! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:56:34'!
textHighlight
	"Selection color - light blue"
	^ Color r: 0.0 g: 0.4 b: 0.8 alpha: 0.3! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:56:43'!
textHighlightFocused: focused
	"Focused/unfocused selection"
	| textHighlight |
	Display depth = 1 ifTrue: [^ Color veryLightGray].
	Display depth = 2 ifTrue: [^ Color gray: 0.87].
	textHighlight := self textHighlight.
	^focused
		ifTrue: [ textHighlight ]
		ifFalse: [ self unfocusedTextHighlightFrom: textHighlight ]! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:56:54'!
textPane
	"Editor background - white"
	^ Color white! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:57:04'!
unfocusedTextHighlightFrom: aColor
	^aColor adjustSaturation: 0.0 brightness: 0.15! !

!XCodeThemeLight methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 22/Feb/2026 10:57:16'!
windowLabel
	"Window title text - dark"
	^ Color r: 0.1 g: 0.1 b: 0.1! !

!XCodeThemeLightRounded methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 6/Mar/2026 11:49:28'!
roundButtons
	"Rounded buttons"
	^ true! !

!XCodeThemeLightRounded methodsFor: 'other options' stamp: 'Arkhangelsky D.S. 6/Mar/2026 11:49:57'!
roundWindowCorners
	"Rounded window corners"
	^ true! !
