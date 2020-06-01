class PercentagesController < ApplicationController
  def create
    @bill = Bill.find(params[:bill_id])
    @percentage = @bill.percentages.create(percentage_params)
    binding.pry
    redirect_to bill_path(@bill)
  end

  def new
  end

  private
  def percentage_params
    params.require(:percentage).permit(:name, :amount)
  end
end
