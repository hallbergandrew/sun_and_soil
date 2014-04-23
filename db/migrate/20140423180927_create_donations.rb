class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
        t.string :email
        t.integer :card
        t.integer :customer_id
        t.decimal :amount
        t.text :description
        t.string :currency

        t.timestamps
    end
  end
end
