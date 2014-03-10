
describe "Index page", ->
	it "displays a welcome message", ->
		visit('/').then ->
			expect($.trim(find('.jumbotron p').text())).toBe('A starting point for a modern ember.js application.')


applicationRoute = null
describe "ApplicationRoute", ->
	beforeEach ->
		applicationRoute = LearningYeomanCh5.ApplicationRoute.create()
	describe "model property", ->
		it "should have the right number of items", ->
			model = applicationRoute.model()
			expect(model.features.length).toBe(3)
