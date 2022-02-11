class CategoriesController < ApplicationController
    before_action :authentication_redirect, :only => [:index, :show]
    before_action :current_user, :only => [:show]

    def new
        @category = @categorable.categories.new
    end

    def index
        @categories = current_user.categories.all
    end

    def create
       @category = Category.new(category_params)
       @category.user = current_user
       @category.save
       redirect_back(fallback_location: root_path)
    end

    def show
        @category = @categorable.categories.find(params[:id])
    end

    private

    def category_params
        params.require(:category).permit(:name, :categorable_type, :categorable_id)
    end

end