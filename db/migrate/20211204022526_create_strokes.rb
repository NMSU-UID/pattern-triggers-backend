class CreateStrokes < ActiveRecord::Migration[6.1]
  def change
    create_table :strokes do |t|
      t.string :user_id, null: false
      t.string :alphabet, limit: 1
      t.boolean :success

      t.timestamps
    end
  end
end
