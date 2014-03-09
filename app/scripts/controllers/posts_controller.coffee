LearningYeomanCh5.PostsController = Ember.ObjectController.extend(
	content: []
	isEditing: false
	edit: () ->
		@set('isEditing', true)
	doneEditing: () ->
		@set('isEditing', false)
		@get('store').commit()
)