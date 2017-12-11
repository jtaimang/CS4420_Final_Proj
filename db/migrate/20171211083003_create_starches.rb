class CreateStarches < ActiveRecord::Migration[5.1]
  def change
    create_table :starches do |t|
      t.string :name

      t.timestamps
    end
  end
end
