class NotesController < ApplicationController
    before_action :authentication_redirect, :only => [:index, :show]
    before_action :current_user, :only => [:show]
    
    def new
        @note = @notable.notes.new
    end

    def create
        @note = @notable.notes.new(note_params)
        @note.user = current_user
        @note.save
        redirect_to @notable, notice: "Noted"
    end

    def show
        @note = @notable.notes.find(params[:id])
    end

    private

    def note_params
        params.require(:note).permit(:content)
    end

end