class TankProfile < ApplicationRecord
  has_many :photos
	belongs_to :user
	
end
