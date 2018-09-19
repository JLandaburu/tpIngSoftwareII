tests
testCreateBoardWith20lockers
	| board |
	board := Board withNumberOfLockers: 20.
	self assert: board numberOfLockers equals: 20.
	