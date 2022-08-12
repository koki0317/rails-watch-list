class Movie < ApplicationRecord
  validates :title, uniqueness: { scope: :title}, presence: true
  validates :overview, presence: true
  has_many :bookmarks
end
