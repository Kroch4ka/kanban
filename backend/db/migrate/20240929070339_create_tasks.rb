class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.references :board, null: false, foreign_key: true
      t.references :column, null: false, foreign_key: true
      t.timestamps
    end
  end
end
