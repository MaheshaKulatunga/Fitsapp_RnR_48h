class AddTypeIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :type_id, :integer
  end
end
