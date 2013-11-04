jQuery ->
  class AppRouter extends Backbone.Router

    routes:
      '': 'tasks'
      'tasks/edit/:id': 'edit_task'

    tasks: ->
      tasks_view = new App.TaskView()
      tasks_view.render()
      $('#app').html(tasks_view.el)

    edit_task: (_id) ->
      edit_task_view = new App.EditTaskView(
        _id: _id
      )
      edit_task_view.render()
      $('#app').html(edit_task_view.el)



  App.router = new AppRouter()
  #use the history.start method to start monitoring the events
  Backbone.history.start()


