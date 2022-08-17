class CreateWares < ActiveRecord::Migration[7.0]
  def change
    create_table :wares do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.string :picture_url
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
