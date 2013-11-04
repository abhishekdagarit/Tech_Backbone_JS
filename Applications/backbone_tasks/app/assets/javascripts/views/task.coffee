class App.TaskView extends Backbone.View

  className: 'tasks-list'

  initialize: ->
    @tasks = new App.TaskCollection()

  render: ->
    #send a Get task request to the Rails backend via AJAX
    @tasks.fetch(
      success: =>
        @display_tasks()
    )

  display_tasks: ->
    source = $("#index-template").html()
    template = Handlebars.compile(source)
    console.log(@tasks.toJSON())
    content = template({
      tasks: @tasks.toJSON()
    })
    $(@el).html('').append(content)
    # datepicker fuction added
    $( "#due" ).datepicker();

  create_task: (e) ->
    e.preventDefault()
    @tasks.create({
      title: $('#title').val()
      complete: $('#complete').val()
      due: $('#due').val()
      body: $('#body').val()
    })
    @display_tasks()

  delete_task: (e) ->
    e.preventDefault()
    task_id = e.currentTarget.id
    console.log(task_id)
    task_model = @tasks.get(task_id)
    console.log(task_model)
    task_model.destroy()
    @display_tasks()


  events:
    'click #submit': 'create_task'
    'click .delete': 'delete_task'



