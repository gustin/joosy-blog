class @ApplicationPage extends Joosy.Page

  @beforePaint (container, complete) ->
    complete()

  @paint (container, complete) ->
    container.fadeTo 80, 0, =>
      complete().fadeTo 400, 1

  @erase (container, compolete) =>
    container.fadeTo 320, 0.2, =>
      complete()
