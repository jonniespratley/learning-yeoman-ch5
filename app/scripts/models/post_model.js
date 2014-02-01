/*global Ember*/
LearningYeomanCh5.Post = DS.Model.extend({
    title: DS.attr('string'),

    slug: DS.attr('string'),

    image: DS.attr('string'),

    published: DS.attr('boolean'),


    body: DS.attr('string'),

    tags: DS.attr('string')
});

// probably should be mixed-in...
LearningYeomanCh5.Post.reopen({
  attributes: function(){
    var model = this;
    return Ember.keys(this.get('data')).map(function(key){
      return Em.Object.create({ model: model, key: key, valueBinding: 'model.' + key });
    });
  }.property()
});

// delete below here if you do not want fixtures
LearningYeomanCh5.Post.FIXTURES = [
  
  {
    id: 0,
    
    title: 'foo',
    
    slug: 'foo',
    
    image: 'foo',
    
    published: 'foo',

    
    body: 'foo',
    
    tags: 'foo'
    
  },
  
  {
    id: 1,
    
    title: 'foo',
    
    slug: 'foo',
    
    image: 'foo',
    
    published: 'foo',

    body: 'foo',
    
    tags: 'foo'
    
  }
  
];
