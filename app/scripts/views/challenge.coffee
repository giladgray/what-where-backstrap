define ['backbone', 'models/challenge-model'], (Backbone, Challenge) ->
	class ChallengeView extends Backbone.View
		template: 'challenge'
		className: 'challenge'

		events:
			'click button': 'toggleAnswer'
			'submit form': 'checkAnswer'

		initialize: ->
			@model = new Challenge
				name: 'Volunteer Park Cafe'
				imageUrl: '/images/VolunteerParkCafe.png'
				clue1: 'North of Capitol Hill'
				clue2: 'Next to a bunch of graves'
				clue3: 'Loads of fresh water, most of the year'

		serialize: -> @model.toJSON()

		beforeRender: ->

		afterRender: ->
			@image = @$('.image')

		toggleAnswer: ->
			@image.toggleClass('active')
			if @image.hasClass 'active'
				@$('#guess').focus()

		checkAnswer: (e) ->
			e.preventDefault()
