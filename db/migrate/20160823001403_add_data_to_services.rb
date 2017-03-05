class AddDataToServices < ActiveRecord::Migration
  def change
  	add_column :services, :name, :string
  	add_column :services, :description, :string
  	add_column :services, :slogan, :string
  end
end
