class Item::NotesController < NotesController
    before_action :set_notable

    private

    def set_notable
        @notable = @user.items.find(params[:item_id])
    end
end