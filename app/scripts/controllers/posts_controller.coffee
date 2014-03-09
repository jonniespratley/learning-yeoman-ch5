LearningYeomanCh5.PostsController = Ember.ObjectController.extend(
	isEditing: false
	edit: () ->
		@set('isEditing', true)
	doneEditing: () ->
		@set('isEditing', false)
		@get('store').commit()
)