class CreateColumns < ActiveRecord::Migration[7.1]
  def change
    create_table :columns do |t|
      t.string :name
      t.references :board, null: false, foreign_key: true
      t.timestamps
    end

    add_index :columns, %i[name board_id], unique: true
  end
end
