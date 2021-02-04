class User < ApplicationRecord
    has_many :cleanups
    has_many :locations, through: :cleanups
end
