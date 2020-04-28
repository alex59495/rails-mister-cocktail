class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses
    validates :name, presence: true, uniqueness: { message: "This cocktail already exists" }
    has_one_attached :cocktail_image

    def self.search(search)
        if search
            Cocktail.where("name LIKE '%#{search.capitalize}%'")
        else
            Cocktail.all
        end
    end
end
