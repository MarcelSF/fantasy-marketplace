class AddNameAndClassToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :c_class, :string
  end
end
