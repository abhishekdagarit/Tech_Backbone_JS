# Standard Rails controller.
# No need to implement def new and def edit since the generation of HTML
# is moved from the server side to the client side.
class TasksController < ApplicationController

  def index
    render :json => Task.all
  end

  def show
    render :json => Task.find(params[:id])
  end

  def create
    document = Task.create! params[:task]
    render :json => document
  end

  def update
    render :json => Task.find(params[:id]).update_attributes!(params[:task])
  end

  def destroy
    render :json => Task.find(params[:id]).destroy
  end

  def edit

  end
end
