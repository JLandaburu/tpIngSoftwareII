tests
testRollDice

|dice |
dice := Dice withNumberOfFaces: 8.
self assert: (dice rollDice: 8) equals: 8.
