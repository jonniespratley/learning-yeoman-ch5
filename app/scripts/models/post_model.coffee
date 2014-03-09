#global Ember
LearningYeomanCh5.Post = DS.Model.extend(
  id: DS.attr()
  title: DS.attr('Post Title')
  body: DS.attr('This is the post content.')
  image: DS.attr('http://placehold.it/100')
  published: DS.attr(true)
  createdAt: DS.attr('string', 
    defaultValue: () -> new Date()
  )
)

LearningYeomanCh5.Post.FIXTURES = [
  {
    id: 0
  }
  {
    id: 1
  }
]