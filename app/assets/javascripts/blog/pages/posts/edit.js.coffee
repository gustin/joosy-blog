Joosy.namespace 'Posts', ->

  class @EditPage extends ApplicationPage
    @layout ApplicationLayout
    @view   'edit'

    @afterLoad ->
      @form = Joosy.Form.attach @rawForm,
        resource: @data.post
        success: (data) => @navigate '/'

    elements:
      'rawForm': 'form'

    @fetch (complete) ->
      Post.find @params.id, (post) =>
        @data.post = post
        complete()
