LearningYeomanCh5.PostsEditController = Ember.ObjectController.extend(
  needs: 'posts'
  actions:
    save: ->
      self = this
      @get('buffer').forEach (attr)->
        self.get('controllers.posts.model').set(attr.key, attr.value)
      @transitionToRoute 'posts', @get('model')
)
