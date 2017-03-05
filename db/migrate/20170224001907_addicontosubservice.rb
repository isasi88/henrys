class Addicontosubservice < ActiveRecord::Migration
  def change
  	rename_column :subservices, :icon, :subicon 
  end
end
