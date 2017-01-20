class AddReceiverToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :receiver, :string
  end
end
