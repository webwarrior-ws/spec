protocol-events
whenSelectedItemChanged: aBlock
	| newBlock |
	
	newBlock := [ :item | aBlock cull: (associationsWrapperToItem at: item ifAbsent: [ nil ])].
	listModel whenSelectedItemChanged: newBlock