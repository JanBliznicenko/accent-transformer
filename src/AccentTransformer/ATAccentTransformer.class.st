Class {
	#name : #ATAccentTransformer,
	#superclass : #Object,
	#classInstVars : [
		'transformDictionary'
	],
	#category : #'AccentTransformer-Transformers'
}

{ #category : #accessing }
ATAccentTransformer class >> compare: firstString with: secondString caseSensitive: isCaseSensitive [

	"returns boolean whether first string is before second string (like < ), but character with accent is always right after character without accent"

	| firstCaseProcessed secondCaseProcessed firstWithoutAccent secondWithoutAccent |
	firstCaseProcessed := isCaseSensitive
		                      ifTrue: [ firstString ]
		                      ifFalse: [ firstString asLowercase ].
	secondCaseProcessed := isCaseSensitive
		                       ifTrue: [ secondString ]
		                       ifFalse: [ secondString asLowercase ].

	firstWithoutAccent := firstCaseProcessed withoutAccent.
	secondWithoutAccent := secondCaseProcessed withoutAccent.

	firstWithoutAccent withIndexDo: [ :charOfFirstWithoutAccent :index | 
		| charOfSecondWithoutAccent charOfFirst charOfSecond |
		secondString size < index ifTrue: [ ^ false ].
		charOfSecondWithoutAccent := secondWithoutAccent at: index.
		charOfFirst := firstCaseProcessed at: index.
		charOfSecond := secondCaseProcessed at: index.
		charOfFirst = charOfSecond ifFalse: [ 
			charOfFirstWithoutAccent = charOfSecondWithoutAccent ifFalse: [ 
				^ charOfFirstWithoutAccent < charOfSecondWithoutAccent ].
			^ charOfFirst < charOfSecond ] ].
	^ firstString size < secondString size
]

{ #category : #accessing }
ATAccentTransformer class >> createTransformDictionary [

	^ { 
		  ($¡ -> $!).
		  ($¿ -> $?).
		  ($· -> $.).
		  ($Ä -> $A).
		  ($ä -> $a).
		  ($À -> $A).
		  ($à -> $a).
		  ($Á -> $A).
		  ($á -> $a).
		  ($Â -> $A).
		  ($â -> $a).
		  ($Ã -> $A).
		  ($ã -> $a).
		  ($Å -> $A).
		  ($å -> $a).
		  ($Ǎ -> $A).
		  ($ǎ -> $a).
		  ($Ą -> $A).
		  ($ą -> $a).
		  ($Ă -> $A).
		  ($ă -> $a).
		  ($Æ -> $E).
		  ($æ -> $e).
		  ($Ā -> $A).
		  ($ā -> $a).
		  ($Ç -> $C).
		  ($ç -> $c).
		  ($Ć -> $C).
		  ($ć -> $c).
		  ($Ĉ -> $C).
		  ($ĉ -> $c).
		  ($Č -> $C).
		  ($č -> $c).
		  ($Ď -> $D).
		  ($đ -> $d).
		  ($Đ -> $D).
		  ($ď -> $d).
		  ($ð -> $d).
		  ($È -> $E).
		  ($è -> $e).
		  ($É -> $E).
		  ($é -> $e).
		  ($Ê -> $E).
		  ($ê -> $e).
		  ($Ë -> $E).
		  ($ë -> $e).
		  ($Ě -> $E).
		  ($ě -> $e).
		  ($Ę -> $E).
		  ($ę -> $e).
		  ($Ė -> $E).
		  ($ė -> $e).
		  ($Ē -> $E).
		  ($ē -> $e).
		  ($Ĝ -> $G).
		  ($ĝ -> $g).
		  ($Ģ -> $G).
		  ($ģ -> $g).
		  ($Ğ -> $G).
		  ($ğ -> $g).
		  ($Ĥ -> $H).
		  ($ĥ -> $h).
		  ($Ì -> $I).
		  ($ì -> $i).
		  ($Í -> $I).
		  ($í -> $i).
		  ($Î -> $I).
		  ($î -> $i).
		  ($Ï -> $I).
		  ($ï -> $i).
		  ($ı -> $i).
		  ($Ī -> $I).
		  ($ī -> $i).
		  ($Į -> $I).
		  ($į -> $i).
		  ($Ĵ -> $J).
		  ($ĵ -> $j).
		  ($Ķ -> $K).
		  ($ķ -> $k).
		  ($Ĺ -> $L).
		  ($ĺ -> $l).
		  ($Ļ -> $L).
		  ($ļ -> $l).
		  ($Ł -> $L).
		  ($ł -> $l).
		  ($Ľ -> $L).
		  ($ľ -> $l).
		  ($Ŀ -> $L).
		  ($ŀ -> $l).
		  ($Ñ -> $N).
		  ($ñ -> $n).
		  ($Ń -> $N).
		  ($ń -> $n).
		  ($Ň -> $N).
		  ($ň -> $n).
		  ($Ņ -> $N).
		  ($ņ -> $n).
		  ($Ö -> $O).
		  ($ö -> $o).
		  ($Ò -> $O).
		  ($ò -> $o).
		  ($Ó -> $O).
		  ($ó -> $o).
		  ($Ô -> $O).
		  ($ô -> $o).
		  ($Õ -> $O).
		  ($õ -> $o).
		  ($Ő -> $O).
		  ($ő -> $o).
		  ($Ø -> $O).
		  ($ø -> $o).
		  ($Œ -> $O).
		  ($œ -> $o).
		  ($Ŕ -> $R).
		  ($ŕ -> $r).
		  ($Ř -> $R).
		  ($ř -> $r).
		  ($ẞ -> $s).
		  ($ß -> $S).
		  ($Ś -> $S).
		  ($ś -> $s).
		  ($Ŝ -> $S).
		  ($ŝ -> $s).
		  ($Ş -> $S).
		  ($ş -> $s).
		  ($Š -> $S).
		  ($š -> $s).
		  ($Ș -> $S).
		  ($ș -> $s).
		  ($Ť -> $T).
		  ($ť -> $t).
		  ($Ţ -> $T).
		  ($ţ -> $t).
		  ($Þ -> $T).
		  ($þ -> $t).
		  ($Ț -> $T).
		  ($ț -> $t).
		  ($Ü -> $U).
		  ($ü -> $u).
		  ($Ù -> $U).
		  ($ù -> $u).
		  ($Ú -> $U).
		  ($ú -> $u).
		  ($Û -> $U).
		  ($û -> $u).
		  ($Ű -> $U).
		  ($ű -> $u).
		  ($Ũ -> $U).
		  ($ũ -> $u).
		  ($Ų -> $U).
		  ($ų -> $u).
		  ($Ů -> $U).
		  ($ů -> $u).
		  ($Ū -> $U).
		  ($ū -> $u).
		  ($Ŵ -> $W).
		  ($ŵ -> $w).
		  ($Ý -> $Y).
		  ($ý -> $y).
		  ($Ÿ -> $Y).
		  ($ÿ -> $y).
		  ($Ŷ -> $Y).
		  ($ŷ -> $y).
		  ($Ź -> $Z).
		  ($ź -> $z).
		  ($Ž -> $Z).
		  ($ž -> $z).
		  ($Ż -> $Z).
		  ($ż -> $z) } asDictionary
]

{ #category : #accessing }
ATAccentTransformer class >> resetTransformDictionary [

	<script>
	transformDictionary := nil
]

{ #category : #accessing }
ATAccentTransformer class >> transform: aCharacter [

	^ self transformDictionary at: aCharacter ifAbsent: [ aCharacter ]
]

{ #category : #accessing }
ATAccentTransformer class >> transformDictionary [

	^ transformDictionary ifNil: [ 
		  transformDictionary := self createTransformDictionary ]
]

{ #category : #accessing }
ATAccentTransformer class >> transformString: aString [

	| transformedString |
	transformedString := aString
		                     collect: [ :eachChar | 
		                     self transform: eachChar ]
		                     as: ByteString.
	aString isSymbol ifFalse: [ ^ transformedString ].
	^ transformedString asSymbol
]
