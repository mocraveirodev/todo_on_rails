class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks, id: :uuid do |t|
      t.string :title, null: false
      t.text :description
      t.boolean :status, default: false, null: false
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.datetime :completed_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
