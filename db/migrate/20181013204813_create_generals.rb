class CreateGenerals < ActiveRecord::Migration
  def change
    create_table :generals do |t|

      t.timestamps null: false
    end
  end
end
