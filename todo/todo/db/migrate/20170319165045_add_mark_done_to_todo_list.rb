class AddMarkDoneToTodoList < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_lists, :mark_done, :boolean
  end
end
