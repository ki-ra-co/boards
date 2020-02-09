class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :board

  validates :content, presence: true, unless: :image?
end
