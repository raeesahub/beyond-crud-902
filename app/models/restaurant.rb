class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # we can do @restaurant.reviews
end
