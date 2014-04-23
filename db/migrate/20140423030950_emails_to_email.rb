class EmailsToEmail < ActiveRecord::Migration
  def change
    remove_column :emails, :emails
    add_column :emails, :email, :string
  end
end
