class AddTaskDateToTodoList < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :task_date, :date
  end
end
