class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates :email, presence: true, uniqueness: true, length: { minimum: 8 }, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
  validates :name, presence: true, length: { minimum: 2 }
  validates :password, presence: true, length: { minimum: 6, maximum: 12 }
  
end
