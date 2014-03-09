LearningYeomanCh5.PostsRoute = Ember.Route.extend(
	model: () ->
		@store.push('post', { id: 1, title: 'Test', body: 'Test'})
		return @store.find('post')
)