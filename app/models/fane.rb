class Fane < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many_attached :photos
  validates :photos, presence: true
end
