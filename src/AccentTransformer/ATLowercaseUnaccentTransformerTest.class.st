Class {
	#name : #ATLowercaseUnaccentTransformerTest,
	#superclass : #ATAbstractUnaccentTransformerTest,
	#category : #'AccentTransformer-Tests'
}

{ #category : #accessing }
ATLowercaseUnaccentTransformerTest >> classToTest [

	^ ATLowercaseUnaccentTransformer
]

{ #category : #tests }
ATLowercaseUnaccentTransformerTest >> testAccentedUppercase [

	self assert: (self classToTest transform: $Ě) equals: $e.
	self assert: (self classToTest transform: $Ř) equals: $r.
	self assert: (self classToTest transform: $Ů) equals: $u.
	self assert: (self classToTest transform: $Ö) equals: $o.
	self assert: (self classToTest transform: $Ń) equals: $n.
	self assert: (self classToTest transform: $ß) equals: $s.
	self assert: (self classToTest transform: $Ø) equals: $o
]

{ #category : #tests }
ATLowercaseUnaccentTransformerTest >> testNotAccentedUppercase [

	self assert: (self classToTest transform: $E) equals: $e.
	self assert: (self classToTest transform: $R) equals: $r.
	self assert: (self classToTest transform: $U) equals: $u.
	self assert: (self classToTest transform: $O) equals: $o.
	self assert: (self classToTest transform: $N) equals: $n
]

{ #category : #tests }
ATLowercaseUnaccentTransformerTest >> testString [

	self
		assert: (self classToTest transformString:
				 'escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ')
		equals: 'escrzyaieuonescrzyaieuonescrzyaieuonescrzyaieuon'
]

{ #category : #tests }
ATLowercaseUnaccentTransformerTest >> testStringIncludesAccentedSubstring [

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ'
			 includesAccentedSubstring: 'oněščř'
			 caseSensitive: false).

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ'
			 includesAccentedSubstring: 'onescr'
			 caseSensitive: false).

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ'
			 includesAccentedSubstring: 'ONĚŠČŘ'
			 caseSensitive: false).

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ'
			 includesAccentedSubstring: 'ONĚŠČŘ'
			 caseSensitive: false).

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ'
			 includesAccentedSubstring: 'Nescrzyaieuoněščřžýáíéůöň'
			 caseSensitive: false).

	self assert: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ'
			 includesAccentedSubstring: 'ESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇe'
			 caseSensitive: false).

	self deny: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ'
			 includesAccentedSubstring: 'abcdef'
			 caseSensitive: false).

	self deny: ('escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ'
			 includesAccentedSubstring: 'ábčďěf'
			 caseSensitive: false)
]

{ #category : #tests }
ATLowercaseUnaccentTransformerTest >> testStringWithoutAccent [

	self
		assert: 'escrzyaieuoněščřžýáíéůöňESCRZYAIEUONĚŠČŘŽÝÁÍÉŮÖŇ'
				asLowercaseWithoutAccent
		equals: 'escrzyaieuonescrzyaieuonescrzyaieuonescrzyaieuon'
]
