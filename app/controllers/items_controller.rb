class ItemsController < ApplicationController

    def new
        @item = Item.new
        @note = @item.notes.new(item_id: params[:item_id])
    end

    def create
        Item.create(item_params)
    end

    def show
        @item = Item.find(params[:id])
        @note = @item.notes.build
        @notes = @item.notes.all
    end


    private

    def item_params
        params.require(:item).permit(:category_name, :content)
    end
end