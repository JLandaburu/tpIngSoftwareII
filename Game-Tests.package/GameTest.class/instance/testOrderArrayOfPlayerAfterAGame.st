tests
testOrderArrayOfPlayerAfterAGame

 |game board player1 player2 dice1 dice2 players dices |
	board := Board withNumberOfLockers: 20.
	player1 := Player withName: 'Juan'.
	player2 := Player withName: 'Hernan'.
	dice1 := Dice withNumberOfFaces: 5.
	dice2 := Dice withNumberOfFaces: 7.
	players := Array new: 2.
	players
		at: 1 put: player1;
		at: 2 put: player2.
	dices := Array new: 2.
	dices
		at: 1 put: dice1;
		at: 2 put: dice2.
	game := Game withBoard: board withArrayOfPlayers: players withArrayOfDices: dices.
	game plays: player1 with: 8.
	self assert: player1 position equals: 8.
	self assert: game isOver equals: false.
	game plays: player2 with: 12.
	self assert: player2 position equals: 12.
	self assert: game isOver equals: false.
	game plays: player1 with: 5.
	self assert: player1 position equals: 13.
	self assert: game isOver equals: false.
	game plays: player2  with: 8.
	self assert: player2 position equals: 20.
	 self assert: game isOver equals: true.
	self assert: (game placeOf: player2) equals: 1.
	self assert: (game placeOf: player1) equals: 2.