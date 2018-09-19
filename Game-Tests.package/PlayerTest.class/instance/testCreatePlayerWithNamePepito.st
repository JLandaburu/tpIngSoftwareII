tests
testCreatePlayerWithNamePepito
	| player |
	player := Player withName: 'Pepito'.
	self  assert: player name equals: 'Pepito';
			assert: player position equals: 0.