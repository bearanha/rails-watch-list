class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, :list, presence: true
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already bookmarked in this list" }
  validates :comment, length: { minimum: 6 }
end
