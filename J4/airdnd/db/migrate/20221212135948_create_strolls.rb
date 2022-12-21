class CreateStrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :strolls do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :dogsitter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
