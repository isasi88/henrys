class AddDataToWorks < ActiveRecord::Migration
  def change
  	add_column :works, :title, :string
  	add_column :works, :brief, :text
  	add_column :works, :date, :datetime
  end
end
