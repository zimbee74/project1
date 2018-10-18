class User < ApplicationRecord
  has_secure_password
  has_many :posts
  has_many :comments
  has_and_belongs_to_many :liked_posts, class_name: 'Post'
end
