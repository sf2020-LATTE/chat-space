class Message < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, unless: :image?
  belongs_to :group
  # validates :group, presence: true

  mount_uploader :image, ImageUploader
end
