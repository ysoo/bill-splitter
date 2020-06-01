class Item < ApplicationRecord
  belongs_to :bill
  belongs_to :person
  monetize :amount_cents
end
