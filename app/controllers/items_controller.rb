class ItemsController < ApplicationController

  def create
    @bill = Bill.find(params[:bill_id])
    @item = @bill.items.create(item_params)
    redirect_to bill_path(@bill)
  end

  private
  def item_params
    params.require(:item).permit(:name, :amount, :person_id)
  end
end
