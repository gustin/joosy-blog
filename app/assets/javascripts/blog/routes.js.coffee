Joosy.Router.map
  404             : (path) -> alert "Page '#{path}' was not found :("
  '/'             : -> @navigate '/posts'
  '/posts'        :
    '/'             : Posts.IndexPage
    '/:id/edit'     : Posts.EditPage
    '/:id'          : Posts.ShowPage
