class AddLongitudeLatitudeToWares < ActiveRecord::Migration[7.0]
  def change
    add_column :wares, :latitude, :float
    add_column :wares, :longitude, :float
    add_column :wares, :address, :string
  end
end
