class TasksController < ApplicationController


  # READ ALL
  def index
    @tasks = Task.all
  end

  # READ ONE
  def show
    @task = Task.find(params[:id])
  end

  # UPDATE PATCH form
  def update
    @task.update(task_params)
    redirect_to task
  end

  # CREATE GET
  def new
    @task = Task.new
  end

  # CREATE POST
  def create
    @task = Task.new(task_params)
    @task.save
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  # DELETE
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end
