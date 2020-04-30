class CocktailsController < ApplicationController
    before_action :find_cocktail, only: [:show, :edit, :update, :destroy]
    def index
        @cocktails = Cocktail.search(params[:query])
    end
    def show
        @dose = Dose.new
    end
    def new
        @cocktail = Cocktail.new
    end
    def create
        @cocktail = Cocktail.new(params_cocktail)
        if @cocktail.save
            redirect_to cocktails_path
        else
            render :new
        end
    end
    def edit
    end
    def update
        if @cocktail.update(params_cocktail)
            redirect_to cocktail_path(@cocktail)
        else
            render :edit
        end
    end
    def destroy
        @cocktail.destroy
        redirect_to cocktails_path
    end

    private
    def params_cocktail
        params.require(:cocktail).permit(:name, :cocktail_image)
    end
    def find_cocktail
        @cocktail = Cocktail.find(params[:id])
    end
end
