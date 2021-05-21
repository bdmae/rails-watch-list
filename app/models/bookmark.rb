class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :comment, presence: true
  validates :movie, presence: true
  validates :movie, uniqueness: { scope: :list }

  belongs_to :movie
  belongs_to :list
end
