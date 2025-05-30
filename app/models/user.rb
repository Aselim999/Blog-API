class User < ApplicationRecord
    has_secure_password
  
    validates :email, presence: true, uniqueness: true
    validates :name, presence: true

    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :destroy

  end
  