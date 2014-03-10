LearningYeomanCh5.PostEditRoute = Ember.Route.extend(
  model: (params) ->
    @get('store').find('post', @modelFor('post').id)
  setupController: (controller, model) ->
    controller.set 'model', model
    buffer = model.get('attributes').map (attr)->
      { key: attr.get('key'), value: attr.get('value') }
    controller.set 'buffer', buffer
)

