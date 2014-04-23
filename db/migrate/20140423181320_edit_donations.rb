class EditDonations < ActiveRecord::Migration
  def change
    rename_column :donations, :customer_id, :nonprofit_id
  end
end
