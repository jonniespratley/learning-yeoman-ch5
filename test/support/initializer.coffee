
Ember.Test.JasmineAdapter = Ember.Test.Adapter.extend(
  asyncRunning: false
  asyncStart: ->
    Ember.Test.adapter.asyncRunning = true
    waitsFor Ember.Test.adapter.asyncComplete
    return

  asyncComplete: ->
    not Ember.Test.adapter.asyncRunning

  asyncEnd: ->
    Ember.Test.adapter.asyncRunning = false
    return

  exception: (error) ->
    expect(Ember.inspect(error)).toBeFalsy()
    return
)

document.write('<div id="ember-testing-container"><div id="ember-testing"></div></div>');
#document.write('<style>#ember-testing-container { position: absolute; background: white; bottom: 0; right: 0; width: 800px; height: 500px; overflow: auto; z-index: 9999; border: 5px solid #ccc; } #ember-testing { zoom: 80%; }</style>');

Ember.testing = true
Ember.Test.adapter = Ember.Test.JasmineAdapter.create()
LearningYeomanCh5.rootElement = "#ember-testing"


LearningYeomanCh5.setupForTesting()
LearningYeomanCh5.injectTestHelpers()
LearningYeomanCh5.ApplicationAdapter = DS.FixtureAdapter

window.start = ->
window.stop = ->

beforeEach ->
	#LearningYeomanCh5.reset()