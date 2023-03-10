class Post < ApplicationRecord
  belongs_to :user
  has_many :users, through: :likes

  def likes
    Like.where(id: self.id).ids
  end
end
