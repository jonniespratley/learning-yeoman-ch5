#global Ember
LearningYeomanCh5.Post = DS.Model.extend(
	title: DS.attr('string')
	body: DS.attr('string')
	image: DS.attr('string')
	published: DS.attr('boolean')
	slug: (-> 
		@get('title').replace(' ', '-').toLowerCase()
	).property('title')
)

# probably should be mixed-in...
LearningYeomanCh5.Post.reopen
	attributes: (->
		model = this
		Ember.keys(@get("data")).map (key) ->
			Em.Object.create(
				model: model
				key: key
				valueBinding: "model." + key
			)
	).property()


# delete below here if you do not want fixtures
LearningYeomanCh5.Post.FIXTURES = [
		id: 1
		title: 'Post 1'
		body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet augue sed massa malesuada bibendum vitae at mi. Donec aliquam blandit cursus.' 
		image: '//placehold.it/225'
	,
		id: 2
		title: 'Post 2'
		body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet augue sed massa malesuada bibendum vitae at mi. Donec aliquam blandit cursus.' 
		image: '//placehold.it/225'
	,
		id: 3
		title: 'Post 3'
		body: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet augue sed massa malesuada bibendum vitae at mi. Donec aliquam blandit cursus.' 
		image: '//placehold.it/225'
]