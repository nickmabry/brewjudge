#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.TwelveSpokes =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  Globals: {}

jQuery ->
  appContainer = jQuery('#app')

  if appContainer.length > 0
    TwelveSpokes.Globals.userId = appContainer.data 'user-id'
    TwelveSpokes.Globals.userName = appContainer.data 'user-name'
    console.info "Initialized Backbone app for user #{TwelveSpokes.Globals.userId}"

    window.router = new TwelveSpokes.Routers.AppRouter();
    Backbone.history.start();
