tests
testCreateGame
	| aBoard game player1 player2 player3 dice1 dice2 dice3 |
	aBoard := Board withNumberOfLockers: 20.
	player1 := Player withName: 'Hernan'.
	player2 := Player withName: 'Juan'.
	player3 := Player withName: 'Ricardo'.
	dice1 := Dice withNumberOfFaces: 6.
	dice2 := Dice withNumberOfFaces: 8.
	dice3 := Dice withNumberOfFaces: 4.
	game := Game
		withBoard: aBoard
		withArrayOfPlayers: #(player1 player2 player3)
		withArrayOfDices: #(dice1 dice2 dice3).
	self
		assert: game board equals: aBoard;
		assert: game arrayOfPlayers size equals: 3;
		assert: game arrayOfDices size equals: 3