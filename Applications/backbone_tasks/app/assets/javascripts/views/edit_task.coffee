class App.EditTaskView extends Backbone.View

  className: 'task-list'

  initialize: ->
    @task = new App.TaskModel({
    _id: @options._id
    })

  render: ->

    @task.fetch(
      success: =>
        @display_task()
    )

  display_task: ->
    source = $('#edit_task-template').html()
    template = Handlebars.compile(source)
    content = template({
    task: @task.toJSON()
    })
    $(@el).html('').append(content)
    # datepicker fuction added
    $( "#due" ).datepicker();

  update_task: (e) ->
    e.preventDefault()
    @task.save({
      title: $('#title').val()
      body: $('#body').val()
      due:  $('#due').val()
      complete: $('#complete').val()
    })
    @display_task()
    App.router.navigate("/", trigger: true)

  events:
    'click #update': 'update_task'



