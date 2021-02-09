class User < ApplicationRecord
    has_many :user_cleanups, dependent: :destroy
    has_many :cleanups, through: :user_cleanups
    validates :username, presence: true, uniqueness: true
    has_secure_password
end
