class AddCoverToWorks < ActiveRecord::Migration
  def change
    add_column :works, :cover, :string
  end
end
