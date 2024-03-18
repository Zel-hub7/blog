class User < ApplicationRecord
    has_many :posts
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    
    validates :name, presence: true


end
