class Food < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :restaurant
  belongs_to :order, optional: true
  has_one :line_food, dependent: :destroy
end
