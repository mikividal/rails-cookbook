class Category < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :recipes, through: :bookmarks
  has_one_attached :photo
  # A category must have a unique name.
  validates :name, uniqueness: true
end
