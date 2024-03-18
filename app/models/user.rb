class User < ApplicationRecord
    has_many :posts, foreign_key: :author_id, dependent: :destroy
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    
    validates :name, presence: true
    validates :PostsCounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
