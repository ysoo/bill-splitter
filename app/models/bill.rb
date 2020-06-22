class Bill < ApplicationRecord
  has_many :items
  has_many :percentages
  has_many :people


  def calculate
    people.map do |person|
      person_total = sum_person(person).to_f*multiplier
      [person.name, person_total]
    end.to_h
  end

  def total
    sum_items + sum_percentages
  end

  def item_total
    sum_items
  end

  private

  def sum_person(person)
    sum = 0.0
    person.items.each do |item|
      sum += item.amount
    end
    sum
  end

  def multiplier
    @multiplier ||= ((sum_percentages.to_f/sum_items.to_f) + 1)
  end

  def sum_percentages
    return @sum_percentages if defined?(@sum_percentages)
    sum = 0.0
    percentages.each do |percentage|
      sum += percentage.amount if percentage.amount
    end
    return @sum_percentages = sum
  end

  def sum_items
    return @sum_items if defined?(@sum_items)
    sum = 0.0
    items.each do |item|
      sum += item.amount if item.amount
    end
    return @sum_items = sum
  end
end
