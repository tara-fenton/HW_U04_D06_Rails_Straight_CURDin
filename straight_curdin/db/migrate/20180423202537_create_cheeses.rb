class CreateCheeses < ActiveRecord::Migration[5.2]
  def change
    create_table :cheeses do |t|

      t.timestamps
    end
  end
end