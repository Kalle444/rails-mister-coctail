class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, presence: true
  validates :cocktail_id, presence: true
  validates :star, numericality: {only_integer: true},  inclusion: { in: [1,2,3,4,5], allow_nil: false }
end
