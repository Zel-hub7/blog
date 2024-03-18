class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :title, presence: true, length: { maximum: 250 }
  # validates :CommentsCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  # validates :LikesCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
