class Review < ApplicationRecord
  belongs_to :cocktail
  validates :rate, inclusion: { in: (0..5) }, presence: true
  validates :content, presence: true
end
