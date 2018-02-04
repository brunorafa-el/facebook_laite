class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 20 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :likes, dependent: :destroy
  has_many :posts, through: :likes
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  include Gravtastic
  gravtastic :email

  def like!(post)
    self.likes.create!(post_id: post.id)
  end

  def dislike!(post)
    like = self.likes.find_by_post_id(post.id)
  end

  def like?(post)
    self.likes.find_by_post_id(post.id)
  end
end
