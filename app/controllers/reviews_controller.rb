class ReviewsController < ApplicationController
    def create
        @cocktail = Cocktail.find(params[:cocktail_id])
        @review = Review.new(params_dose)
        @review.cocktail = @cocktail
        if @review.save
            redirect_to cocktail_path(@cocktail)
        else
            @dose = Dose.new
            render 'cocktails/show'
        end

    end

    def params_dose
        params.require(:review).permit(:content, :rate)
    end
end
