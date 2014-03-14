describe "Index page", ->	
	
	it "should display jumbotron title, image and body", ->
		visit('/').then ->
			expect(text('.jumbotron h1')).toBe(LearningYeomanCh5.config.feature.title)
			expect(text('.jumbotron p')).toBe(LearningYeomanCh5.config.feature.body)
			expect(find('.jumbotron img').attr('src')).toBe(LearningYeomanCh5.config.feature.image)
	it 'should display a list of features', ->
		visit('/').then ->
			expect(find('.feature').length).toBe(3)
