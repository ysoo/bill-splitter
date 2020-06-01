class Bill < ApplicationRecord
  has_many :items
  has_many :percentages
  has_many :people
end
