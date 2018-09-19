update
hasEnded
	isOver := true.
	arrayOfPlayers sort: [:player1 :player2 | player1 position >= player2 position].
	