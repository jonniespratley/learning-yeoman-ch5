describe "Index page", ->	
	it "displays a welcome message", ->
		visit('/').then ->
			expect($.trim(find('.jumbotron p').text())).toBe(LearningYeomanCh5.config.feature.title)
