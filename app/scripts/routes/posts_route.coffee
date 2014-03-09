LearningYeomanCh5.PostsRoute = Ember.Route.extend(
	setupController: (controller) ->
		controller.set('content', DS.Store.get('posts'));
)