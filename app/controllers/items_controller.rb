class ItemsController < ApplicationController
    before_action :authentication_redirect, :only => [:index, :show]
    before_action :current_user, :only => [:show]

    def new
        @item = @itemable.items.new
    end

    def create
        @item = Item.new(items_params)
        @item.user = current_user
        if @item.save
        redirect_to polymorphic_path(@item.itemable), notice: "Added new item"
        else
            render :new, notice: "Please fill in all fields"
        end
    end

    def show
        @user = current_user
        @item = Item.find(params[:id])
        
    end

    private

    def items_params
        params.require(:item).permit(:name, :price, :tax, :store_name, :itemable_id, :itemable_type, :receipt_id)
    end
end