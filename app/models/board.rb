class Board < ApplicationRecord
  has_many :users_borads
  has_many :users, through: :users_boards
  validates :title, presence: true
end
