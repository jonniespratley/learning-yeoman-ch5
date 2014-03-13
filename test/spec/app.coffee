###
describe "PostsRoute", ->
	postsRoute = null
	beforeEach ->
		postsRoute = LearningYeomanCh5.PostsRoute.create()
	
	describe "model property", ->
		it "should have 3 posts", ->
			model = postsRoute.model()
			expect(model.length).toBe(3)
###