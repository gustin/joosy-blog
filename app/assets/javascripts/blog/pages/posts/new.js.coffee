Joosy.namespace 'Posts', ->

  class @NewPage extends ApplicationPage
    @layout ApplicationLayout
    @view   'new'

    elements:
      'rawForm': 'form'


