tests
testPlayerCanNotPlayWhenGameIsOver
	| game board player1 player2 dice1 dice2 players dices |
	board := Board withNumberOfLockers: 30.
	player1 := Player withName: 'John'.
	player2 := Player withName: 'Jack'.
	players := Array new: 2.
	players
		at: 1 put: player1;
		at: 2 put: player2.
	dice1 := Dice withNumberOfFaces: 8.
	dice2 := Dice withNumberOfFaces: 9.
	dices := Array new: 2.
	dices
		at: 1 put: dice1;
		at: 2 put: dice2.
	game := Game withBoard: board withArrayOfPlayers: players withArrayOfDices: dices.
	game plays: player1 with: 17.
	self assert: player1 position equals: 17.
	self assert: game isOver equals: false.
	game plays: player2 with: 14.
	self assert: player2 position equals: 14.
	self assert: game isOver equals: false.
	game plays: player1 with: 17.
	self assert: player1 position equals: 34.
	self assert: game isOver equals: true.
	self should: [ game plays: player2. ] raise: AssertionFailure.
	self assert: player2 position equals: 14.