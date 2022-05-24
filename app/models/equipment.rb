class Equipment < ApplicationRecord
  SPORTS = ["Kayak", "Kitesurf", "Paddle", "Surf", "Wakeboard", "Windsurf"]
  belongs_to :user
  has_many :bookings

  validates :sport, :brand, :price, :description, :location, :title, :condition, presence: true
  has_one_attached :photo
end
