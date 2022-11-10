class Production < ApplicationRecord
  belongs_to :fleet
  belongs_to :teammate
end
