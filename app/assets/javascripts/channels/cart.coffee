App.cart = App.cable.subscriptions.create "CartChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log("Data received", data)
    $(".cart").html(data.number)
    # Called when there's incoming data on the websocket for this channel

  update: ->
    # @perform 'update'
