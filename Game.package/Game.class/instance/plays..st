update
plays: aPlayer
	self isOver
		ifTrue: [ 
			AssertionFailure signal: 'Game is over.' 
			]
		ifFalse: [ 
			(self arrayOfPlayers at: self nextPlayer) == aPlayer
				ifTrue: [ 
					aPlayer rollDices: self arrayOfDices.
					aPlayer position >= self board numberOfLockers
						ifTrue: [ 
							self hasEnded 
							]
						ifFalse: [ 
							self changePlayer. 
							 ] 
						]
				ifFalse: [ 
					AssertionFailure signal: 'Not this player"s turn.'
					 	] 
					]