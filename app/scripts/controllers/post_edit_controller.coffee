LearningYeomanCh5.PostEditController = Ember.ObjectController.extend(
  needs: 'post'
  isEditing: false
  actions:
    save: ->
      self = this
      @get('buffer').forEach (attr)->
        self.get('controllers.post.model').set(attr.key, attr.value)
      @transitionToRoute 'post', @get('model')
  
)
