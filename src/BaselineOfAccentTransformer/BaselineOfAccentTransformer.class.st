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
		spec group: 'default' with: #( 'AccentTransformer' ) ]
]
