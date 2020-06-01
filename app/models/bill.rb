class Bill < ApplicationRecord
  has_many :items
  has_many :percentages
end
