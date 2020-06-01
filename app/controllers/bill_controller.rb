class BillController < ApplicationController
  def new
  end

  def create
    @bill = Bill.new(bill_params)
    @bill.save

    redirect_to @bill
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def index
    @bills = Bill.all
  end

  private

  def bill_params
    params.require(:bill).permit(:name)
  end
end
