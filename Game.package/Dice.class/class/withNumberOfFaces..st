initialize
withNumberOfFaces: anInteger 
	anInteger  > 1
		ifTrue: [ ^ self new initializeWithNumberOfFaces: anInteger.  ]
		ifFalse: [ AssertionFailure signal: 'you can''t create a dice with less than 2 faces' ]