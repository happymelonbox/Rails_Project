class CategoriesController < ApplicationController

    def new
        @category = Category.new
    end

    def create
    Category.create(category_params)
    end


    private

    def category_params
        params.require(:category).permit(:receipt_id, :item_id)
    end

end