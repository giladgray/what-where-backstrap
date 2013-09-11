define ['app', 'views/navbar', 'views/landing', 'views/challenge'], (app, NavbarView, LandingView, ChallengeView) ->
    "use strict"

    # Defining the application router, you can attach sub routers here.
    Router = Backbone.Router.extend
        routes:
            '': 'index'
            'current': 'current'

        initialize: ->
            # set the application layout and attach views that are always present
            app.useLayout 'layout'
            app.layout.setView('#navbar', new NavbarView()).render()

        index: ->
            app.layout.setView('#content', new LandingView()).render()

        current: ->
            app.layout.setView('#content', new ChallengeView()).render()
