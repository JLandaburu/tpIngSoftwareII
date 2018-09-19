accessing
placeOf: aPlayer 
	self isOver
		ifTrue: [ 
			arrayOfPlayers doWithIndex:  [:each :i | 
			(each == aPlayer)
				ifTrue: [ ^ i. ]
		 		]
			 ]
		ifFalse: [ 
			AssertionFailure signal: 'El juego no termino, no se puede dar la posicion.'.
			 ]