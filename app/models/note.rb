class Note < ApplicationRecord
  
  belongs_to :user

  has_one_attached :photo
  
  validates :title, presence: true
  validates :content, presence: true
  validates :photo, attached: true
end