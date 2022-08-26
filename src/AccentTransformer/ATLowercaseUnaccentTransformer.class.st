Class {
	#name : #ATLowercaseUnaccentTransformer,
	#superclass : #ATUnaccentTransformer,
	#category : #'AccentTransformer-Transformers'
}

{ #category : #accessing }
ATLowercaseUnaccentTransformer class >> createLowercaseDictionary [

	^ { 
		  ($A -> $a).
		  ($B -> $b).
		  ($C -> $c).
		  ($D -> $d).
		  ($E -> $e).
		  ($F -> $f).
		  ($G -> $g).
		  ($H -> $h).
		  ($I -> $i).
		  ($J -> $j).
		  ($K -> $k).
		  ($L -> $l).
		  ($M -> $m).
		  ($N -> $n).
		  ($O -> $o).
		  ($P -> $p).
		  ($Q -> $q).
		  ($R -> $r).
		  ($S -> $s).
		  ($T -> $t).
		  ($U -> $u).
		  ($V -> $v).
		  ($W -> $w).
		  ($X -> $x).
		  ($Y -> $y).
		  ($Z -> $z) } asDictionary
]

{ #category : #accessing }
ATLowercaseUnaccentTransformer class >> createTransformDictionary [

	^ (super createTransformDictionary collect: [ :eachChar | 
		   eachChar asLowercase ]) , self createLowercaseDictionary
]

{ #category : #initialization }
ATLowercaseUnaccentTransformer class >> resetTransformDictionary [

	<script>
	super resetTransformDictionary
]
