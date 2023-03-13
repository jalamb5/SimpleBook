class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  def likes
    Like.where(id: self.id).ids
  end
end
