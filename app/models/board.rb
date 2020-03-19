class Board < ApplicationRecord
  belongs_to :user
  has_many :chats
  validates :title, presence: true
end
