accessing
winner
	self isOver
		ifTrue: [ 
			^ arrayOfPlayers at: 1.
			 ]
		ifFalse: [ 
			AssertionFailure signal: 'The game is not over.'
			 ]