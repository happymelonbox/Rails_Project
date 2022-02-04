class Receipts::ItemsController < ItemsController
    before_action :set_itemable

    private

    def set_itemable
        @itemable = @user.receipts.find(params[:receipt_id])
    end
end
