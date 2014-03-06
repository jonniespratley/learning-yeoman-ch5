# Assuming we know that 5 posts display per page and that there are more than 5 posts
test "root lists first page of posts", ->
  visit "/"
  andThen ->
    equal find(".post").length, 3, "The first page should have 3 posts"
    return

  return


