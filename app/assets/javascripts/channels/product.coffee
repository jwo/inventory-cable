App.product = App.cable.subscriptions.create "ProductChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log(data)
    $(".product[data-product-id=#{data.product.id}]").replaceWith(data.template)
