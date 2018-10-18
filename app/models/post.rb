class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  has_and_belongs_to_many :fans, class_name: 'User'

end
