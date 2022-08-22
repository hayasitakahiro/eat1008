class Cheat < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  
  
  
  validates :image, presence: true
  validates :name, presence: true
end
