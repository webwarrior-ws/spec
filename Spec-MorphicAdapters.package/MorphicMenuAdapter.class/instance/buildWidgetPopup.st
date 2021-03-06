private
buildWidgetPopup

	widget := SpecInterpreter interpretASpec: self class popupSpec model: self.
	self menuGroups 
		do: [ :group || items |
			items := group buildWithSpec.
			items do: [ :item | widget addMenuItem: item ] ] 
		separatedBy: [ widget addLine ].
	
	^ widget