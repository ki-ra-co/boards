class CreateUsersBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :users_boards do |t|
      t.references :board, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
