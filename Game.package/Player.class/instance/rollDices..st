update
rollDices: anArrayOfDices 
	| sum |
	sum := 0.
	
	anArrayOfDices do: [ :each | sum:= sum + each rollDice]. 
	self moveForward: sum