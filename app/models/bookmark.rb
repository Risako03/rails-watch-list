class Bookmark < ApplicationRecord
  has_many_attached :photos
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6, too_short: "%{count} characters is the minimum allowed" }
  validates :movie_id, uniqueness: { scope: [:list_id] }
end
