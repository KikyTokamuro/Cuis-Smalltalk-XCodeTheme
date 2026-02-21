'From Cuis7.7 [latest update: #7839] on 21 February 2026 at 10:38:10 pm'!
'Description '!
!provides: 'XCodeTheme' 1 1!
SystemOrganization addCategory: #XCodeTheme!


!classDefinition: #'XCodeThemeDark' category: #XCodeTheme!
Theme subclass: #'XCodeThemeDark'
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'XCodeTheme'!
!classDefinition: 'XCodeThemeDark class' category: #XCodeTheme!
XCodeThemeDark class
	instanceVariableNames: ''!


!XCodeThemeDark commentStamp: '<historical>' prior: 0!
A dark theme inspired by Apple XCode IDE.!

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 22:37:57'!
background
	"Main desktop background"
	^ `Color veryVeryDarkGray`! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S 21/Feb/2026 14:43:07'!
buttonLabel
	"Button text color"
	^ Color r: 0.85 g: 0.85 b: 0.85! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S. 21/Feb/2026 21:53:57'!
missingCommentTextColor
	"Color for missing comments"
	^ Color r: 0.416 g: 0.600 b: 0.333! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S 21/Feb/2026 14:42:34'!
paneBackgroundFrom: aColor
	"Pane backgrounds"
	^ (aColor alphaMixed: 0.1 with: Color darkGray) alpha: 0.9! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S 21/Feb/2026 14:41:25'!
text
	"Default text color"
	^ Color r: 0.847 g: 0.847 b: 0.847! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S 21/Feb/2026 14:41:46'!
textHighlight
	"Selection color"
	^ Color r: 0.184 g: 0.396 b: 0.647! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S 21/Feb/2026 14:41:57'!
textHighlightFocused: focused
	"Focused/unfocused selection"
	| textHighlight |
	Display depth = 1 ifTrue: [^ Color veryLightGray].
	Display depth = 2 ifTrue: [^ Color gray: 0.87].
	textHighlight := self textHighlight.
	^focused
		ifTrue: [ textHighlight ]
		ifFalse: [ self unfocusedTextHighlightFrom: textHighlight ]! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S 21/Feb/2026 14:41:34'!
textPane
	"Editor background"
	^ Color r: 0.118 g: 0.118 b: 0.137! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S 21/Feb/2026 14:37:16'!
unfocusedTextHighlightFrom: aColor
	^aColor adjustSaturation: 0.0 brightness: 0.08! !

!XCodeThemeDark methodsFor: 'colors' stamp: 'Arkhangelsky D.S 21/Feb/2026 14:42:46'!
windowLabel
	"Window title text"
	^ Color r: 0.9 g: 0.9 b: 0.9! !

!XCodeThemeDark methodsFor: 'tool colors' stamp: 'Arkhangelsky D.S 21/Feb/2026 14:42:16'!
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
