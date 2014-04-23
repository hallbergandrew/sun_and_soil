class CreateNonprofits < ActiveRecord::Migration
  def change
    create_table :nonprofits do |t|
      t.column :name, :string
      t.column :type, :string
    end
  end
end
