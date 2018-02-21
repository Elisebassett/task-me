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
    @task = Task.update(task_params)
    redirect_to current_user
  end

  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end

end
