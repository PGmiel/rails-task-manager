class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # 7 CRUD
  def index
    # Read
    @tasks = Task.all
  end

  def show
    # Show
    # @task = Task.find(params[:id])
  end

  def new
    # new
    @task = Task.new
  end

  def create
    # Create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    # Edit
    # @task = Task.find(params[:id])
  end

  def update
    # Update
    # task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    # Delete
    # @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
