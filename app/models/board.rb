class Board < ApplicationRecord
  has_many :users_borads
  has_many :users, through: :users_boards
  has_many :chats
  validates :title, presence: true
end
