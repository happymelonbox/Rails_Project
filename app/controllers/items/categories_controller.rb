class Item::CategoryController < CategoryController
    before_actions :set_categorable

    private

    def set_categorable
        @categorable = @user.items.find(params[:item_id])
    end
end
