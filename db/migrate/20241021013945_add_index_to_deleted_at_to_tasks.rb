class AddIndexToDeletedAtToTasks < ActiveRecord::Migration[5.2]
  def change
    add_index :tasks, :deleted_at
  end
end
