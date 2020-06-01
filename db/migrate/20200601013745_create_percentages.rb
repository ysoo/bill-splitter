class CreatePercentages < ActiveRecord::Migration[6.0]
  def change
    create_table :percentages do |t|
      t.string  :name
      t.integer :amount_cents
      t.integer :bill_id

      t.timestamps
    end
  end
end
