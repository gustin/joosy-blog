class @ApplicationLayout extends Joosy.Layout
  @view 'application'

  @afterLoad ->
    updateClocks = =>
      @clocks.html new Date().format('{dd} {Mon} {yyyy}, {hh}:{mm}:{ss}')

    updateClocks()
    @setInterval 1000, updateClocks

  elements:
    'navigationBar': '.navbar'
    'clocks':        '.navbar .pull-right a'

  events:
    'mouseenter $navigationBar': -> 'showClocks'
    'mouseleave $navigationBar': -> @clocks.hide()

  showClocks: -> @clocks.show()
