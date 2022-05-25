class Equipment < ApplicationRecord
  SPORTS = ["Kayak", "Kitesurf", "Paddle", "Surf", "Wakeboard", "Windsurf"]
  geocoded_by :location
  belongs_to :user
  has_many :bookings
  after_validation :geocode, if: :will_save_change_to_location?
  validates :sport, :brand, :price, :description, :location, :title, :condition, presence: true
  has_one_attached :photo
end
