class Addsubservices < ActiveRecord::Migration
  def change
  	add_column :subservices, :name, :string
  	add_column :subservices, :description, :text
  	add_column :subservices, :icon, :string
  end
end
