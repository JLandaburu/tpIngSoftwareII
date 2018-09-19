tests
testCreateADiceWithOneFace
	| dice |
	self should: [ dice:= Dice withNumberOfFaces: 1. ] raise: AssertionFailure .