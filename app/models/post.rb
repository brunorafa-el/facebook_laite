class Post < ApplicationRecord
  validates :caption, presence: true, length: { maximum: 1000 }
  has_attached_file :image, styles: { large: "500x500>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :likes, through: :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  belongs_to :user

  def likes_counter
    self.likes.count
  end

  def comments_counter
    self.comments.count
  end

  def owner?(user)
    user == self.user
  end
end
