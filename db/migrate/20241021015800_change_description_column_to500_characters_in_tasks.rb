class ChangeDescriptionColumnTo500CharactersInTasks < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :description, :text, limit: 500
  end
end
