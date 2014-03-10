window.Config =
	baseurl: document.location.origin
	sitetitle: "Learning Yeoman"
	sitedesc: "a starting point for a modern ember.js application."
	sitecopy: "2014 Copywrite"
	version: '0.0.1'
	email: "admin@email.com"
	debug: true	
	feature: 
		image: '/images/yo-ember.png'
		title: 'Chapter 5'
		body: 'A starting point for a modern ember.js application.'

	features: [
		title: 'Handlebars.js', body: 'Handlebars provides the power necessary to let you build semantic templates effectively with no frustration.', image: 'https://dl.dropboxusercontent.com/u/26906414/cdn/img/learning-yeoman/feature-handlebars.png'
	,
		title: 'EmberJS', body: 'Ember.js incorporates common idioms so you can focus on what makes your app special, not reinventing the wheel. Ember.js is built for productivity.', image: 'https://dl.dropboxusercontent.com/u/26906414/cdn/img/learning-yeoman/feature-ember.png'
	,
		title: 'CSS3', body: 'CSS3 is the latest standard for CSS. CSS3 is completely backwards-compatible with earlier versions of CSS.', image: 'https://dl.dropboxusercontent.com/u/26906414/angular-cms/images/feature-css3.png'
	]
	session: 
		authorized: false
		user: null
	menu:
		admin: []
		pub: [
			title: 'Home', icon: 'home', href:'#/', requireLogin: false
		,
			title: 'About', icon: 'info', href:'#/about', requireLogin: false
		,
			title: 'Posts', icon: 'list', href:'#/posts', requireLogin: false
		]
