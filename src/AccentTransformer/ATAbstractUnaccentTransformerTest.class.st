Class {
	#name : #ATAbstractUnaccentTransformerTest,
	#superclass : #TestCase,
	#category : #'AccentTransformer-Tests'
}

{ #category : #testing }
ATAbstractUnaccentTransformerTest class >> isAbstract [

	^ self = ATAbstractUnaccentTransformerTest
]

{ #category : #accessing }
ATAbstractUnaccentTransformerTest >> classToTest [

	^ self subclassResponsibility
]

{ #category : #tests }
ATAbstractUnaccentTransformerTest >> testAccentedLowercase [

	self assert: (self classToTest transform: $ě) equals: $e.
	self assert: (self classToTest transform: $ř) equals: $r.
	self assert: (self classToTest transform: $ů) equals: $u.
	self assert: (self classToTest transform: $ö) equals: $o.
	self assert: (self classToTest transform: $ń) equals: $n.
	self assert: (self classToTest transform: $ẞ) equals: $s.
	self assert: (self classToTest transform: $ø) equals: $o
]

{ #category : #tests }
ATAbstractUnaccentTransformerTest >> testAccentedUppercase [

	self assert: (self classToTest transform: $Ě) equals: $E.
	self assert: (self classToTest transform: $Ř) equals: $R.
	self assert: (self classToTest transform: $Ů) equals: $U.
	self assert: (self classToTest transform: $Ö) equals: $O.
	self assert: (self classToTest transform: $Ń) equals: $N.
	self assert: (self classToTest transform: $ß) equals: $S.
	self assert: (self classToTest transform: $Ø) equals: $O
]

{ #category : #tests }
ATAbstractUnaccentTransformerTest >> testNotAccentedLowercase [

	self assert: (self classToTest transform: $e) equals: $e.
	self assert: (self classToTest transform: $r) equals: $r.
	self assert: (self classToTest transform: $u) equals: $u.
	self assert: (self classToTest transform: $o) equals: $o.
	self assert: (self classToTest transform: $n) equals: $n
]

{ #category : #tests }
ATAbstractUnaccentTransformerTest >> testNotAccentedUppercase [

	self assert: (self classToTest transform: $E) equals: $E.
	self assert: (self classToTest transform: $R) equals: $R.
	self assert: (self classToTest transform: $U) equals: $U.
	self assert: (self classToTest transform: $O) equals: $O.
	self assert: (self classToTest transform: $N) equals: $N
]

{ #category : #tests }
ATAbstractUnaccentTransformerTest >> testSpecialCharacters [

	self assert: (self classToTest transform: $:) equals: $:.
	self
		assert: (self classToTest transform: Character space)
		equals: Character space.
	self
		assert: (self classToTest transform: Character cr)
		equals: Character cr
]

{ #category : #tests }
ATAbstractUnaccentTransformerTest >> testString [

	self
		assert: (self classToTest transformString:
				 'escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ')
		equals: 'escrzyaieuonescrzyaieuonESCRZYAIEUONESCRZYAIEUON'
]

{ #category : #tests }
ATAbstractUnaccentTransformerTest >> testStringIncludesAccentedSubstring [

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ' 
			 includesAccentedSubstring: 'oněščř').

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ' 
			 includesAccentedSubstring: 'onescr').

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ' 
			 includesAccentedSubstring: 'ONĚŠČŘ').

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ' 
			 includesAccentedSubstring: 'ONĚŠČŘ').

	self deny: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ' 
			 includesAccentedSubstring: 'Nescrzyaieuoněščřžýáíéůöň').

	self deny: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ' 
			 includesAccentedSubstring: 'ESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇe').

	self deny: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ' 
			 includesAccentedSubstring: 'abcdef').

	self deny: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ' 
			 includesAccentedSubstring: 'ábčďěf')
]

{ #category : #tests }
ATAbstractUnaccentTransformerTest >> testStringWithoutAccent [

	self
		assert:
		'escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ' withoutAccent
		equals: 'escrzyaieuonescrzyaieuonESCRZYAIEUONESCRZYAIEUON'
]
