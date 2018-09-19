tests
testAPlayerRollDicesAndMoveForwards
	| dice1 dice2 player  arrayOfDices|
	dice1 := Dice withNumberOfFaces: 6.
	dice2 := Dice withNumberOfFaces: 8.
	player := Player withName: 'Pedro'.
	arrayOfDices := Array new: 2.
	arrayOfDices at: 1 put: dice1 .
	arrayOfDices  at: 2 put:dice2.
	player rollDicesWith: 14.
	self assert: player position equals: 14. 