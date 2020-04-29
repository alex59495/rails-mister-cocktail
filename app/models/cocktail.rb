class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses
    validates :name, presence: true, uniqueness: { message: "This cocktail already exists" }
    has_one_attached :cocktail_image
    validates :cocktail_image, presence: { message: "You must add an image" }

    def self.search(search)
        if search
            Cocktail.where("name LIKE '%#{search.capitalize}%'")
        # elsif
        #     Cocktail.where("ingredients LIKE '%#{search.capitalize}%'")
        else
            Cocktail.all
        end
    end
end
