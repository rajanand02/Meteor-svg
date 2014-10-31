@Collections = new Mongo.Collection("collections")
@Widgets = new Mongo.Collection('widgets')
if Meteor.isClient
  Template.hello.events
    "click button": ->

      # increment the counter when button is clicked
      Session.set "counter", Session.get("counter") + 1


    "click .rectangle": ->
      alert "rectangel"

  Template.hello.helpers
    collections: () ->
      Collections.find({},{$sort:{created_date: -1}}).fetch()

    widgets:()->
      Widgets.find().fetch()
