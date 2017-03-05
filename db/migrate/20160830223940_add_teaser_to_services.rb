class AddTeaserToServices < ActiveRecord::Migration
  def change
    add_column :services, :teaser, :string
  end
end
