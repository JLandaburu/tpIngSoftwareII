tests
testGameIsOver
	| game board player1 player2 dice1 dice2 players dices |
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
	game plays: player1 with: 12.
	self assert: player1 position equals: 12.
	self assert: game isOver equals: false.
	game plays: player2 with: 10.
	self assert: player2 position equals: 10.
	self assert: game isOver equals: false.
	game plays: player1 with: 12.
	self assert: player1 position equals: 24.
	self assert: game isOver equals: true.