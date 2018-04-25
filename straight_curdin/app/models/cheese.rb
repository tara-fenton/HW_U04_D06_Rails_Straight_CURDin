class Cheese < ApplicationRecord
  belongs_to :country, optional: true
  has_many :favorites
end
