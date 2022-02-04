class Receipt::CategoryController < CategoryController
    before_actions :set_categorable

    private

    def set_categorable
        @categorable = @user.receipts.find(params[:receipt_id])
    end
end