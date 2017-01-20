class RemoveIdFromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :message_id, :integer
    remove_column :messages, :sender_id, :integer
  end
end
