class Room < ApplicationRecord
    validates :title, :description, :beds, :guests, :image_url, :price_per_night, presence: true
    validates :description, length: { maximum: 400 }
    validates :beds, :guests, :price_per_night, numericality: { only_integer: true }
   
end
