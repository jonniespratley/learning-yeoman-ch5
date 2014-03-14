describe "Index page", ->	
	
	it 'should display site title, navigation and site copywrite', ->
		visit('/').then ->
			expect(text('.brand')).toBe(LearningYeomanCh5.config.sitetitle)
			expect(text('footer')).toBe(LearningYeomanCh5.config.sitecopy)
			expect(find('.nav li').length).toEqual(LearningYeomanCh5.config.menu.pub.length)
	
	it "should display jumbotron title, image and body, and list features", ->
		visit('/').then ->
			expect(text('.jumbotron h1')).toBe(LearningYeomanCh5.config.feature.title)
			expect(text('.jumbotron p')).toBe(LearningYeomanCh5.config.feature.body)
			expect(find('.jumbotron img').attr('src')).toBe(LearningYeomanCh5.config.feature.image)
			expect(find('.feature').length).toBe(3)
