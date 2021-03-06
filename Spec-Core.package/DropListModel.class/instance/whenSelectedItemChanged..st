protocol-events
whenSelectedItemChanged: aBlock
	<api: #event>
	"Set a block to perform when the selected item is changed"

	selectionHolder selection whenChangedDo: [ :new :old :announcement :ann | 
		aBlock cull: (new ifNotNil: [ :item | item model ]) cull: old cull: announcement cull: ann ]