tests
testPlayerCanNotPlayWhenItIsNotHisTurn
	| game board player1 player2 player3 dice1 dice2 players dices |
	board := Board withNumberOfLockers: 20.
	player1 := Player withName: 'Peter'.
	player2 := Player withName: 'Paul'.
	player3 := Player withName: 'Patrick'.
	players := Array new: 3.
	players
		at: 1 put: player1;
		at: 2 put: player2;
		at: 3 put: player3.
	dice1 := Dice withNumberOfFaces: 6.
	dice2 := Dice withNumberOfFaces: 7.
	dices := Array new: 2.
	dices
		at: 1 put: dice1;
		at: 2 put: dice2.
	game := Game withBoard: board withArrayOfPlayers: players withArrayOfDices: dices.
	game plays: player1 with: 13.
	self assert: player1 position equals: 13.
	self assert: game isOver equals: false.
	self should: [ game plays: player3. ] raise: AssertionFailure.
	game plays: player2 with: 12.
	self assert: player2 position equals: 12.
	self assert: game isOver equals: false.