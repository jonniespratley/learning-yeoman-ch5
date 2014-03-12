
describe "Index page", ->
	
	it "displays a welcome message", ->
		visit('/').then ->
			expect($.trim(find('.jumbotron p').text())).toBe('A starting point for a modern ember.js application.')


