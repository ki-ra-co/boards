class Board < ApplicationRecord
  has_one :chat

  validates :title, presence: true

end
