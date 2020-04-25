class CocktailsController < ApplicationController
    def index
        @cocktails = Cocktail.search(params[:query])
    end
    def show
        @cocktail = Cocktail.find(params[:id])
    end
    def new
        @cocktail = Cocktail.new
    end
    def create
        @cocktail = Cocktail.new(params_cocktail)
        @cocktail.save
        redirect_to cocktails_path
    end

    private
    def params_cocktail
        params.require(:cocktail).permit(:name)
    end
end
