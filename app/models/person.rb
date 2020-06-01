class Person < ApplicationRecord
  has_many :item
  belongs_to :bill
end
