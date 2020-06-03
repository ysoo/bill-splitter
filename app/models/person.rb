class Person < ApplicationRecord
  has_many :items
  belongs_to :bill
end
