class ProductExit < ApplicationRecord
  belongs_to :product
  belongs_to :fleet
  belongs_to :warehouse
end
