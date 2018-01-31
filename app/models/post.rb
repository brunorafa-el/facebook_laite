class Post < ApplicationRecord
  has_attached_file :image, styles: { large: "500x500>", medium: "200x200#", thumb: "50x50#"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :caption, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
end
