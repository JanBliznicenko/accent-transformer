Extension { #name : #SpStringTableColumn }

{ #category : #'*AccentTransformer-Spec2' }
SpStringTableColumn >> accentedCaseInsensitiveSortFunction [

	self sortFunction: [ :a :b | 
		ATAccentTransformer
			compare: (self evaluation value: a)
			with: (self evaluation value: b)
			caseSensitive: false ] asSortFunction
]

{ #category : #'*AccentTransformer-Spec2' }
SpStringTableColumn >> accentedSortFunction [

	self sortFunction: [ :a :b | 
		ATAccentTransformer
			compare: (self evaluation value: a)
			with: (self evaluation value: b)
			caseSensitive: true ] asSortFunction
]

{ #category : #'*AccentTransformer-Spec2' }
SpStringTableColumn >> caseInsensitiveSortFunction [

	self sortFunction:
		[ :object | (self evaluation value: object) asLowercase ]
			asSortFunction
]
