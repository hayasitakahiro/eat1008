class Cheat < ApplicationRecord
  has_one_attached :image
  
  
  
  
  validates :image, presence: true
  validates :name, presence: true
end
