class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category
  # A bookmark must be linked to a recipe and a category, and the [recipe, category] pairings should be unique.
  validates :recipe_id, uniqueness: { scope: :category_id }
  # The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, length: { minimum: 6 }
end
