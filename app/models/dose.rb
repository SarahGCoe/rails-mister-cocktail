class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates_uniqueness_of :cocktail_id, scope: [:ingredient_id]
  # validates :dose_id, uniqueness: true, scope: [:cocktail_id, :ingredient_id]
end
