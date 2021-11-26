class Item::NotesController < NotesController
    before_action :set_notable

    private

    def set_notable
        @notable = Item.find(params[:receipt_id])
    end
end