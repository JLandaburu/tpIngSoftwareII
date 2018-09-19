tests
testCreateADicewith6Faces
	| dice|
	dice:= Dice withNumberOfFaces: 6.
	self assert:  dice numberOfFaces = 6