class Cocktail < ApplicationRecord
  has_attachments :photos,  maximum: 2
  has_many :doses,  dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true
end
