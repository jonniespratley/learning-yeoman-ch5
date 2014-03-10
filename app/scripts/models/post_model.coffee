#global Ember
LearningYeomanCh5.Post = DS.Model.extend(
  title: DS.attr('string')
  body: DS.attr('string')
  image: DS.attr('string')
  published: DS.attr('boolean')
)

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
		id: 1
		title: 'Handlebars.js'
		body: 'Handlebars provides the power necessary to let you build semantic templates effectively with no frustration.' 
		image: 'https://dl.dropboxusercontent.com/u/26906414/cdn/img/learning-yeoman/feature-handlebars.png'
	,
		id: 2
		title: 'EmberJS'
		body: 'Ember.js incorporates common idioms so you can focus on what makes your app special, not reinventing the wheel. Ember.js is built for productivity.' 
		image: 'https://dl.dropboxusercontent.com/u/26906414/cdn/img/learning-yeoman/feature-ember.png'
	,
		id: 3
		title: 'CSS3' 
		body: 'CSS3 is the latest standard for CSS. CSS3 is completely backwards-compatible with earlier versions of CSS.' 
		image: 'https://dl.dropboxusercontent.com/u/26906414/angular-cms/images/feature-css3.png'
]