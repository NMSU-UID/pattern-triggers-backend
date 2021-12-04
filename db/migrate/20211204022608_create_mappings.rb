class CreateMappings < ActiveRecord::Migration[6.1]
  def change
    create_table :mappings do |t|
      t.string :user_id, null: false
      t.string :alphabet, limit: 1
      t.string :feature

      t.timestamps
    end
  end
end
