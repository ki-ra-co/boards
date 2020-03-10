class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :board

  mount_uploader :image, ImageUploader
  validates :content, presence: true, unless: :image?
end
