class DosesController < ApplicationController
    before_action :find_cocktail, only: [:new, :create]
    def new
        @dose = Dose.new
    end
    def create
        @dose = Dose.new(params_dose)
        @dose.cocktail = @cocktail
        puts @dose.valid?
        puts @dose.errors
        if @dose.save
            redirect_to cocktail_path(@cocktail)
        else
            render :new
        end
    end
    def destroy
    end

    private
    def params_dose
        params.require(:dose).permit(:description, :ingredient_id)
    end
    def find_cocktail
        @cocktail = Cocktail.find(params[:cocktail_id])
    end
end
