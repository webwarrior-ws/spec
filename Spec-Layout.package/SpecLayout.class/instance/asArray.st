converting
asArray

	| result |
	result := OrderedCollection new.
	result add: self type.
	
	result addAll: self privateAsArray.
	^ result asArray