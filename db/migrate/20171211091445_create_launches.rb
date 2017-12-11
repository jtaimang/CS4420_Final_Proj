class CreateLaunches < ActiveRecord::Migration[5.1]
  def change
    create_table :launches do |t|

      t.timestamps
    end
  end
end
