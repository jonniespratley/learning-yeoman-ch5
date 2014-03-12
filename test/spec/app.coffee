applicationRoute = null
describe "ApplicationRoute", ->
	
	beforeEach ->
		applicationRoute = LearningYeomanCh5.ApplicationRoute.create()
	
	describe "model property", ->
		
		it "should have 3 features", ->
			model = applicationRoute.model()
			expect(model.features.length).toBe(3)
