update
changePlayer
	self nextPlayer == self arrayOfPlayers size
		ifTrue: [
			nextPlayer := 1. 
			 ]
		ifFalse: [
			nextPlayer := nextPlayer + 1. 
			 ]