class Photo < ApplicationRecord
  belongs_to :tank_profile
  attachment :image, type: :image
end
