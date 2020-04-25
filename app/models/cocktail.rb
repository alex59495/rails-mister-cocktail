class Cocktail < ApplicationRecord
    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses
    validates :name, presence: true, uniqueness: true

    def self.search(search)
        if search
            Cocktail.where("name LIKE '%#{search.capitalize}%'")
        else
            Cocktail.all
        end
    end
end
