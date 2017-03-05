class AddSubserviceId < ActiveRecord::Migration
  def change
  	add_column :subservices, :service_id, :integer
  end
end
