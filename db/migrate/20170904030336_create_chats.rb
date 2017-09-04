class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.boolean :is_man
      t.text :content

      t.timestamps
    end
  end
end
