class ReceiptsController < ApplicationController
  before_action :authentication_redirect, :only => [:index, :show]
  before_action :current_user, :only => [:show]

    def index
      @user ||= current_user
      @receipts = @user.receipts.all
    end

    def new
      @user ||= current_user
      @receipt = @user.receipts.new
    end

    def show
      @user ||= current_user
      @receipt = @user.receipts.find(params[:id])
      # @note = @receipt.notes.build
      # @notes = @receipt.notes.all
      # @category = @receipt.categories.build
      # @categories = @receipt.categories.all
      # @item = @receipt.items.build
      # @items = @receipt.items.all
    end

    def create
      @user ||= current_user
      @receipt = @user.receipts.new(receipt_params)
      if @receipt.save
        redirect_to receipt_path(@receipt)
      else
        render :new, notice: "Receipt not saved, please try again"
      end
    end

    private

    def receipt_params
        params.require(:receipt).permit(:name, :date, :time, :store_id)
    end
end