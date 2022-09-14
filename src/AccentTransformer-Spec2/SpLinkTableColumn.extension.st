Extension { #name : #SpLinkTableColumn }

{ #category : #'*AccentTransformer-Spec2' }
SpLinkTableColumn >> accentedCaseInsensitiveSortFunction [

	self sortFunction: [ :a :b | 
		ATAccentTransformer
			compare: (self evaluation value: a)
			with: (self evaluation value: b)
			caseSensitive: false ] asSortFunction
]

{ #category : #'*AccentTransformer-Spec2' }
SpLinkTableColumn >> accentedSortFunction [

	self sortFunction: [ :a :b | 
		ATAccentTransformer
			compare: (self evaluation value: a)
			with: (self evaluation value: b)
			caseSensitive: true ] asSortFunction
]

{ #category : #'*AccentTransformer-Spec2' }
SpLinkTableColumn >> caseInsensitiveSortFunction [

	self sortFunction:
		[ :object | (self evaluation value: object) asLowercase ]
			asSortFunction
]
