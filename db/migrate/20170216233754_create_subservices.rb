class CreateSubservices < ActiveRecord::Migration
  def change
    create_table :subservices do |t|

      t.timestamps
    end
  end
end
