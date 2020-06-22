class ItemsController < ApplicationController

  def new
  end

  def create
    @bill = Bill.find(params[:bill_id])
    @item = @bill.items.new(item_params)
    @item.save
    redirect_to bill_path(@bill)
  end

  private
  def item_params
    params.require(:item).permit(:name, :amount, :person_id)
  end
end
