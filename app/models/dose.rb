class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  # validates :description, uniqueness: true, :scope => [:cocktail_id, :ingredient_id]
  validates :cocktail_id, :uniqueness => { :scope => :ingredient_id }
end
