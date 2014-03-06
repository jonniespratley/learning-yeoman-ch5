LearningYeomanCh5.Router.map( ->
  @route('index', path: '/')
  @resource('post', path: '/posts/:post_id')
  @resource('posts')
)
