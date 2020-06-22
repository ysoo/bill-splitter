class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.uuid   :uuid
      t.jsonb  :session
      t.integer :number_of_sessions

      t.timestamps
    end
  end
end
