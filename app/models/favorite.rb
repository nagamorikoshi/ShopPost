class Favorite < ApplicationRecord
  
  belongs_to :customer
  belongs_to :shop_image
  
end
