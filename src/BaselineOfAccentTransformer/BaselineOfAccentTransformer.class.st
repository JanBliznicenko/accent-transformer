Class {
	#name : #BaselineOfAccentTransformer,
	#superclass : #BaselineOf,
	#category : #BaselineOfAccentTransformer
}

{ #category : #baselines }
BaselineOfAccentTransformer >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec package: 'AccentTransformer'.
		spec
			package: 'AccentTransformer-Spec2'
			with: [ spec requires: #( AccentTransformer ) ].
		spec group: 'default' with: #( 'AccentTransformer-Spec2' ) ].
	spec
		for: #( #'pharo8.x' #'pharo7.x' #'pharo6.x' )
		do: [ spec group: 'default' with: #( 'AccentTransformer' ) ]
]
