LearningYeomanCh5.Router.map( ->
	#Main View
	@route('index', path: '/')
	
	#Post View
	@resource('posts', () ->
		@route('post', path: ':post_id')
	)
	#About View
	@resource 'about'
)