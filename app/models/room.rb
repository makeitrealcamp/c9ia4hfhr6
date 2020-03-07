class Room < ApplicationRecord
    validates :title, :description, :beds, :guests, :image_url, :presence =>true
    validates :description, length: { maximum: 400}
    validates :beds, numericality: true
    validates :beds, numericality: { only_integer: true }
end
