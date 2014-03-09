#global Ember
LearningYeomanCh5.Post = DS.Model.extend(
  title: DS.attr("string")
  author: DS.attr("string")
  intro: DS.attr("string")
  image: DS.attr("string")
  body: DS.attr("string")
  extended: DS.attr("string")
  publishedAt: DS.attr("date")
)
LearningYeomanCh5.Post.FIXTURES = [
  {
    id: 1
    title: "Rails in Omakase"
    author: "d2h"
    publishedAt: new Date("12-27-2012")
    intro: "Blah blah blah blah"
    extended: "I have no clue what extended means"
  }
  {
    id: 2
    title: "Second post"
    author: "second author"
    publishedAt: new Date("1-27-2012")
    intro: "second intro"
    extended: "Second extended"
  }
]