#global Ember
LearningYeomanCh5.Post = DS.Model.extend({})

# probably should be mixed-in...
LearningYeomanCh5.Post.reopen attributes: (->
  model = this
  Ember.keys(@get("data")).map (key) ->
    Em.Object.create
      model: model
      key: key
      valueBinding: "model." + key


).property()

# delete below here if you do not want fixtures
LearningYeomanCh5.Post.FIXTURES = [
  {
    id: 0
  }
  {
    id: 1
  }
]