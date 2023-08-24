class Fane < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates :photos, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_brand_and_description,
    against: [ :title, :brand, :description],
    using: {
      tsearch: { prefix: true }
  }
end
