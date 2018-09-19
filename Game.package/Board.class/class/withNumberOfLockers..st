as yet unclassified
withNumberOfLockers: anInteger
	anInteger >1
	ifTrue:[
	^ self new initializeWithNumberOfLockers: anInteger.]
ifFalse:[
	AssertionFailure signal: 'Size must be more than 1']