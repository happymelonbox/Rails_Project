class Receipts::NotesController < NotesController
    before_action :set_notable

    private

    def set_notable
        @notable = @user.receipts.find(params[:receipt_id])
    end
end