tests
testMovePositionOfPlayer
	| player |
	player := Player withName: 'John'.
	player moveForward: 10.
	self assert: player position equals: 10.
	player moveForward: 4.
	self assert:  player  position  equals: 14.