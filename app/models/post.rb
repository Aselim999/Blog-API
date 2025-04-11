class Post < ApplicationRecord
  belongs_to :user
end

class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true
  validates :tags, presence: true
  has_many :comments, dependent: :destroy

end

