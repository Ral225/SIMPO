class Breakdown < ApplicationRecord
  belongs_to :fleet
  has_many_attached :photos
end
