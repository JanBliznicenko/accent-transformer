Extension { #name : #String }

{ #category : #'*AccentTransformer' }
String >> asLowercaseWithoutAccent [

	^ ATAccentTransformer transformString: self asLowercase
]

{ #category : #'*AccentTransformer' }
String >> includesAccentedSubstring: aString [

	"Returns whether the receiver contains the argument, ignoring accent (similar to ignoring case)."

	^ self includesAccentedSubstring: aString caseSensitive: true
]

{ #category : #'*AccentTransformer' }
String >> includesAccentedSubstring: aString caseSensitive: aBoolean [

	"Returns whether the receiver contains the argument, ignoring accent (similar to ignoring case)."

	^ aBoolean
		  ifTrue: [ 
		  self withoutAccent includesSubstring: aString withoutAccent ]
		  ifFalse: [ 
			  self asLowercaseWithoutAccent includesSubstring:
				  aString asLowercaseWithoutAccent ]
]

{ #category : #'*AccentTransformer' }
String >> withoutAccent [

	^ ATAccentTransformer transformString: self
]
