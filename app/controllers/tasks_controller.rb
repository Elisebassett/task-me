class TasksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.create(task_params)
    redirect_to current_user
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    Task.find(params[:id]).update(task_params)
    redirect_to current_user
  end

  def destroy
    @task = Task.find(params[:id]).destroy
    respond_to do |format|
      format.js
      format.html {redirect_to departments_path}
    end
    # redirect_to current_user
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :complete)
  end

end
