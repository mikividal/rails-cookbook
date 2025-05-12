class Category < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :recipes, through: :bookmarks
  # A category must have a unique name.
  validates :name, uniqueness: true
end
