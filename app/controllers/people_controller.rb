class PeopleController < ApplicationController
  def create
    @bill = Bill.find(params[:bill_id])
    @percentage = @bill.people.create(people_params)
    redirect_to bill_people_path(@bill)
  end

  def new
  end

  def index
    @bill = Bill.find(params[:bill_id])
    @people = Person.all
  end

  private
  def people_params
    params.require(:person).permit(:name)
  end
end
