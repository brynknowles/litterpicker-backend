class Location < ApplicationRecord
    has_many :cleanups
    has_many :users, through: :cleanups
end

