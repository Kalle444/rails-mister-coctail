
class Ingredient < ApplicationRecord
  # before_destroy :check_for_cocktails
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true

  private
  # def check_for_cocktails
  #   binding.pry
  #   if doses.cocktails
  #     return false
  #   end
  # end
end
