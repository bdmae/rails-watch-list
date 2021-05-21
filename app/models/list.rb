class List < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  has_many :bookmarks, dependent: :destroy

  # bookmarks job is to keep track of which movie is in which list
  has_many :movies, through: :bookmarks
  has_one_attached :photo
end
