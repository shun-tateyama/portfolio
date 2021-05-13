class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :foods, dependent: :destroy
  has_many :line_foods, through: :foods

  validates :name, :fee, :time_required, presence: true
  validates :name, length: { maximum: 30 }
  validates :fee, numericality: { greater_than: 0 }
end
