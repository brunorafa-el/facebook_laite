class Comment < ApplicationRecord
  validates :comment, presence: true
  belongs_to :post
  belongs_to :user

  def owner?(user)
    user == self.user
  end
end
