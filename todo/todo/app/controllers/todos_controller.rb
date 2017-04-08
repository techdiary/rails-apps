class TodosController < ApplicationController
  def index
    @todos = TodoList.all
  end

  def create
    # Form submitted from /new are sent as params to controller
    # render plain: params[:todo_lists].inspect
    @todo = TodoList.new(todo_params)
    if @todo.save
      redirect_to todo_path @todo
    else
      render 'new'
    end
  end

  def show
    # TODO Show all saved todos
    @todo = TodoList.find(params[:id])
  end

  def new
    # TODO Handle new form submit request
    @todo = TodoList.new
  end

  def edit
  end

  def update
  end

  def destroy
    @todo = TodoList.find(params[:id])
    @todo.destroy

    redirect_to todos_path
  end

  private
    def todo_params
      params.require(:todo_list).permit(:name, :task_date)
    end
end
