# AccentTransformer
Supersimple Pharo library for transforming accented characters

### Known limitations

* Not all characters are includes, only european ones.
* It only can translate single character into another single character. As a result, it translates ß into single S, Æ into E etc.
* It is not very efficient - using simple dictionary of replacements.

### Installation
```smalltalk
Metacello new
	baseline: 'AccentTransformer';
	repository: 'github://JanBliznicenko/accent-transformer';
	load.
```

### Baseline item
```smalltalk
spec
	baseline: 'AccentTransformer'
	with: [ spec repository: 'github://JanBliznicenko/accent-transformer' ].
```
