class App.TaskModel extends Backbone.Model

  idAttribute: '_id'
  urlRoot: '/tasks'

    #Toggle the state of complete for task item
  toggle: ->
     @save({ complete: !@get(complete) })

    #Remove the task item from local storage and remove its view
  clear: ->
    @destroy()
    @view.remove()

