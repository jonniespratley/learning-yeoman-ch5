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

describe 'PostModel', ->
	postModel = null
	
	beforeEach ->
		LearningYeomanCh5.reset()
	
	describe 'slug property should return title without whitespace, lowercased', ->
		
		it 'should have a sluged slug property', ->
			postModel = LearningYeomanCh5.Post.create(title: 'Post Title', body: 'This is the body')
