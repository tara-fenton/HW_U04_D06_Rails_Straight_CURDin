class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites, :primary_key => :favorite_id do |t|
      t.integer :user_id
      t.integer :cheese_id

      t.timestamps
    end
  end
end
