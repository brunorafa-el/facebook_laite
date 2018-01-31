class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :likes, dependent: :destroy
  has_many :posts, through: :likes

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
