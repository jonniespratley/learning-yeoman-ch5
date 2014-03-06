LearningYeomanCh5 = window.LearningYeomanCh5 = Ember.Application.create(
	LOG_VIEW_LOOKUPS: true
	LOG_ACTIVE_GENERATION: true
)
Ember.LOG_BINDINGS = true
# Order and include as you please.
require 'scripts/config'
require 'scripts/controllers/*'
require 'scripts/store'
require 'scripts/models/*'
require 'scripts/routes/*'
require 'scripts/views/*'
require 'scripts/router'
