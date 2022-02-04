class CategoriesController < ApplicationController
    before_action :authentication_redirect, :only => [:index, :show]
    before_action :current_user, :only => [:show]

    def new
        @category = @categorable.categories.new
    end

    def index
        @categories = @categorable.categories.all
    end

    def create
       @category = Category.new(category_params)
       @category.user = current_user
       @category.save
       redirect_to polymorphic_path(@category.categorable), notice: "Category Created"
    end

    def show
        @category = @categorable.categories.find(params[:id])
    end

    private

    def category_params
        params.require(:category).permit(:name, :categorable_type, :categorable_id, :receipt_id)
    end

end