class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :body, presence: true, length: { minimum: 20 }
  validates :user_id, presence: true
end
