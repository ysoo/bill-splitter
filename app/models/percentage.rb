class Percentage < ApplicationRecord
  belongs_to :bill
  monetize :amount_cents
end
