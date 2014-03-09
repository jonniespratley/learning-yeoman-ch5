LearningYeomanCh5.PostsRoute = Ember.Route.extend(
	model: () ->
		return LearningYeomanCh5.Post.find()
)

#Post Route
LearningYeomanCh5.PostRoute = Ember.Route.extend(
	model: (params) ->
		return LearningYeomanCh5.Post.findBy('id', params.post_id)
)