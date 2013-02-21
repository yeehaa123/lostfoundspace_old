@App = Ember.Application.create()

# Router
App.Router.map ->
  @resource "slides", ->
    @resource 'slide', { path: ':slide_id' }

App.SlidesRoute = Ember.Route.extend
  model: ->
    App.Slide.find()

# Controllers
App.SlidesController = Ember.ArrayController.extend
  addSlide: ->
    new_id = parseInt(@get('lastObject').id) + 1
    App.Slide.createRecord id: new_id, description: "ENTER SOMETHING"


# Models
App.Store = DS.Store.extend
  revision: 11
  adapter: "DS.FixtureAdapter"

App.Slide = DS.Model.extend({
  description: DS.attr('string')
  })


App.Slide.FIXTURES = [
  { id: 1, description: "dhgsa jhdshdgsjh gdsdgsjlgds dgsdlsgglds" }
,
  { id: 2, description: "dhgsa jhdshdgsjh gdsdgsjlgds dgsdlsgglds" }
,
  { id: 3, description: "dhgsa jhdshdgsjh gdsdgsjlgds dgsdlsgglds" }
,
  { id: 4, description: "dhgsa jhdshdgsjh gdsdgsjlgds dgsdlsgglds" }
,
  { id: 5, description: "dhgsa jhdshdgsjh gdsdgsjlgds dgsdlsgglds" }
,
  { id: 6, description: "dhgsa jhdshdgsjh gdsdgsjlgds dgsdlsgglds" }
]
