class Cheese < ApplicationRecord
  belongs_to :country, optional: true
end
