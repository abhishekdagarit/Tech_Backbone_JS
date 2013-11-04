class App.TaskCollection extends Backbone.Collection

  model: App.TaskModel
  url: '/tasks'

  #commenting out the local storage option as we will be using the Mongoid support instead.
  #localStorage: new Store("tasks")
  #instead the route is mentioned in the model part

  #get the list of complete tasks
  getDone: ->
    return tasks.get("complete")

  #filter the tasks based on completeness status
  done: ->
    return @filter( getComplete )

  #find the uncomplete tasks
  remaining: ->
    return @without.apply( this, @complete() )


