class DosesController < ApplicationController
    before_action :find_cocktail, only: [:new, :create]
    def create
        @dose = Dose.new(params_dose)
        @dose.cocktail = @cocktail
        # puts @dose.valid?
        # puts @dose.errors
        if @dose.save
            redirect_to cocktail_path(@cocktail)
        else
            render :new
        end
    end
    def destroy
        @dose = Dose.find(params[:id])
        @dose.destroy
        redirect_to cocktail_path(@dose.cocktail)
    end

    private
    def params_dose
        params.require(:dose).permit(:description, :ingredient_id)
    end
    def find_cocktail
        @cocktail = Cocktail.find(params[:cocktail_id])
    end
end
