class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, :body, presence: true
  has_one_attached :photo
end
