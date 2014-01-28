class TwelveSpokes.Routers.AppRouter extends Backbone.Router
  initialize: (options) ->

  routes:
    "": "index"
  
  index: ->
    @view = new TwelveSpokes.Views.App.IndexView()
    $("#app").html(@view.render().el)

