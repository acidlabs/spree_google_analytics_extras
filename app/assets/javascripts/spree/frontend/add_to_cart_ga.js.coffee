$ ->
  $(document).on 'click', '.add-to-cart-button', ->
    sku = $(@).data('sku')
    name = $(@).data('name')
    price = $(@).data('price')

    ga 'ec:addProduct',
      'id': sku
      'name': name
      'price': price

    ga 'ec:setAction', 'add'
    ga 'send', 'event', 'UX', 'click', 'add to cart'

