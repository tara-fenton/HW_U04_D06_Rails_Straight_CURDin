class CreateCheeses < ActiveRecord::Migration[5.0]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.string :milk_type
      t.string :image_url
      t.text :description

    end
  end
end
