class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses
    validates :name, presence: true, uniqueness: { message: "This cocktail already exists" }
    has_one_attached :cocktail_image
    validates :cocktail_image, presence: { message: "You must add an image" }

    def self.search(search)
        if search
            doses = []
            cocktail_ids = []
            ingredients = Ingredient.where("name LIKE '%#{search.capitalize}%'")
            ingredients.each do |ingredient|
                doses << Dose.find_by(ingredient_id: ingredient.id)
            end
            doses.each do |dose|
                if dose
                    cocktail_ids << dose.cocktail_id
                end
            end
            result = Cocktail.where("name LIKE '%#{search.capitalize}%' OR id IN (?)", cocktail_ids)
            # raise
        else
            result = Cocktail.all
        end
    return result
    end
end
