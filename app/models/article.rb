class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable

  validates :title, :body, presence: true
  has_rich_text :body
end
