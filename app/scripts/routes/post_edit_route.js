LearningYeomanCh5.PostEditRoute = Ember.Route.extend({
  model: function(params) {
    return this.get('store').find('post', this.modelFor('post').id);
  },
  setupController: function(controller, model){
    controller.set('model', model);
    buffer = model.get('attributes').map(function(attr){
      return { key: attr.get('key'), value: attr.get('value') }
    });
    controller.set('buffer', buffer)
  }
});

