LearningYeomanCh5.PostEditController = Ember.ObjectController.extend(
	needs: 'post'
	isEditing: false
	actions:
		save: ->
			@get('model').save()
			@transitionToRoute 'post', @get('model')
		destroy: ->
			if confirm('This record will be deleted!')
				@get('model').deleteRecord()
				@transitionToRoute 'posts'
)