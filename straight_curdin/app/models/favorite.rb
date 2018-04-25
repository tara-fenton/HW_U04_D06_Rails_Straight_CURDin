class Favorite < ApplicationRecord
  get_primary_key 'favorite_id'
  belongs_to :user
  belongs_to :cheese

  attr_accessor :user, :favorite_id, :cheese
  # attr_accessible :user, :cheese
end
