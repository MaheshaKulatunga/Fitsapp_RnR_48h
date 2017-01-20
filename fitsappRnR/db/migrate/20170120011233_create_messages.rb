class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.integer :message_id
      t.integer :sender_id
      t.integer :receiver_id
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
