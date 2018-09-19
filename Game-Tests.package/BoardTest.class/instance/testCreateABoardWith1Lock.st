tests
testCreateABoardWith1Lock
|board|
self should: [board:= Board withNumberOfLockers: 1] raise: AssertionFailure. 

