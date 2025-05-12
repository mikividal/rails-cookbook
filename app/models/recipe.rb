class Recipe < ApplicationRecord
  has_many :bookmarks
  # A recipe must have a description and a unique name.
  validates :description, presence: true
  validates :name, uniqueness: true
  # The rating of a recipe must be a value between 0 and 5.
  validates :rating, numericality: { in: 0..5 }
end
