class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.text :content
      t.string :image
      t.references :user, foreign_key: true
      t.references :board, foreign_key: true
      t.timestamps
    end
  end
end
