class User < ApplicationRecord

  # [
  #   {
  #     bill_name: "SakaeSushi",
  #     items: [
  #       {
  #         name: "Ramen",
  #         amount: 2000,
  #         person: "Sandy",
  #       }
  #     ],
  #     percentages: [
  #       {
  #         name: "Tip",
  #         amount: 1500,
  #       }
  #     ],
  #     people: [
  #       {
  #         name: "Sandy",
  #         total: "3500"
  #       }
  #     ],
  #     total: 3500,
  #   }
  # ]


  def calculate

  end

  def total
    sum_items + sum_percentages
  end

  def item_total
    sum_items
  end

  private

  def sum_person(person)

  end

  def multiplier

  end

  def sum_percentages

  end

  def sum_items

  end
end
