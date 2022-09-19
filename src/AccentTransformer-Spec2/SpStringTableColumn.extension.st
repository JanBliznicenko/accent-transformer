Extension { #name : #SpStringTableColumn }

{ #category : #'*AccentTransformer-Spec2' }
SpStringTableColumn >> accentedCaseInsensitiveSortFunction [

	self accentedSortFunctionCaseSensitive: false
]

{ #category : #'*AccentTransformer-Spec2' }
SpStringTableColumn >> accentedSortFunction [

	self accentedSortFunctionCaseSensitive: true
]

{ #category : #'*AccentTransformer-Spec2' }
SpStringTableColumn >> accentedSortFunctionCaseSensitive: aBoolean [

	self sortFunction: [ :a :b | 
		ATAccentTransformer
			compare: ((self evaluation value: a) ifNil: [ '' ])
			with: ((self evaluation value: b) ifNil: [ '' ])
			caseSensitive: aBoolean ] asSortFunction
]

{ #category : #'*AccentTransformer-Spec2' }
SpStringTableColumn >> caseInsensitiveSortFunction [

	self sortFunction: [ :object | 
		((self evaluation value: object) ifNil: [ '' ]) asLowercase ]
			asSortFunction
]
