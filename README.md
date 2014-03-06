learning-yeoman-ch5
===================

This is the repository for the Learning Yeoman Chapter 5 tutorial.


![Build](https://travis-ci.org/jonniespratley/learning-yeoman-ch5.png)

```
  yo
  508  yo ember --test-framework=jasmine --coffee --karma
  509  yo ember --test-framework=jasmine --coffee --karma
  510  git add .
  511  git commit -am 'added first default scaffold using new generator version'
  512  git add .
  513  git commit -am 'added first default scaffold using new generator version'
  514  git add .
  515  git commit -am 'updated'
  516  git branch
  517  git push origin develop
  518  yo ember:controller posts
  519  yo ember:controller posts
  520  touch app/scripts/config.coffee
  521  yo ember:controller posts
  522  yo ember:model post
```

## Test HELPERS
visit(url) - Visits the given route and returns a promise that fulfills when all resulting async behavior is complete.
find(selector, context) - Finds an element within the app's root element and within the context (optional). Scoping to the root element is especially useful to avoid conflicts with the test framework's reporter.
fillIn(input_selector, text) - Fills in the selected input with the given text and returns a promise that fulfills when all resulting async behavior is complete.
click(selector) - Clicks an element and triggers any actions triggered by the element's click event and returns a promise that fulfills when all resulting async behavior is complete.
keyEvent(selector, type, keyCode) - Simulates a key event type, e.g. keypress, keydown, keyup with the desired keyCode on element found by the selector.
