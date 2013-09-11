define ['backbone'], (Backbone) ->
	class Challenge extends Backbone.Model
		className: 'Challenge'

		defaults:
			imageUrl: ''
			name: ''
			clue1: ''
			clue2: ''
			clue3: ''
			rating: 0
