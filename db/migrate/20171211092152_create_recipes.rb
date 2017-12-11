class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.integer :meat_id
      t.integer :vegetable_id
      t.integer :starch_id

      t.timestamps
    end
  end
end
